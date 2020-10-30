//
//  HomeViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/23/20.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet weak var greetingLable: UILabel!
    
    var login: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLable.text = "Welcom to my world, \(login.login)!"
        
    }
    
    @IBAction func goBackLogInButton() {
    }
}
