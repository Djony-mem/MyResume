//
//  ViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/23/20.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func forgotNameButton() {
        showAlert(with: "Your name", and: "Aleksey")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Your password", and: "A1234Y")
    }
    
    @IBAction func loginTapped() {
        guard let inputTextName = userNameTextField.text, !inputTextName.isEmpty else {
           return showAlert(with: "Are you mistake", and: "Enter your name")
        }
        guard let inputTextPassword = passwordTextField.text,
              !inputTextPassword.isEmpty else {
            return showAlert(with: "Are you mistake", and: "Enter your password")}
        
        if inputTextPassword != getPerson().password {
            showAlert(with: "Ops", and: "This is not your password")
            passwordTextField.text = ""
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let homeVC = tabBarController.viewControllers?.first as! HomeViewController
        homeVC.login = userNameTextField.text

    }
    
}

// MARK: - Alert Controler

extension ViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title,
                        message: massage,
                        preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
}

// MARK: - Extension UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        }
        return true
    }
}

