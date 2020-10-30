//
//  ViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/23/20.
//

import UIKit


class LoginViewController: UIViewController {
    
// MARK: - IB Outlet
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
// MARK: - Private properties
    private let user = User.getPersonID()
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomVC = tabBarController.viewControllers?.first as! WelcomViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let moreInfoVC = navigationVC.topViewController as! MoreInfoViewController
        welcomVC.login = user
        moreInfoVC.person = user
       
    }
    
// MARK: - IB Action
    
    @IBAction func loginTapped() {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(title: "Invalid login or password",
                      massage: "Please enter correct login or password",
                      textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "showWelcome", sender: nil)
}

    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Oops!",
                  massage: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!",
                  massage: "Your password is \(user.password)")
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}
// MARK: - Extensions

extension LoginViewController {
    private func showAlert(title: String, massage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text = nil
        }
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginTapped()
        }
        return true
    }
}

