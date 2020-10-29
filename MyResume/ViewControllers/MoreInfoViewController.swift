//
//  MoreInfoViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/25/20.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var sheButton: UIButton!
    
    var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sheButton.layer.cornerRadius = 10
        title = person.person.fullName
    }

}
