//
//  HomeViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/23/20.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var greetingLable: UILabel!
    var login: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLable.text = "Welcom to my world, \(login!)"
    }
    
    @IBAction func goBackLogInButton() {
     dismiss(animated: true)
        
    }
}
