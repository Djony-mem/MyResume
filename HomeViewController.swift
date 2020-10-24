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
        greetingLable.text = "Welcom to my world, \(String(describing: login))"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
