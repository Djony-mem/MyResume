//
//  MoreInfoViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/25/20.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var myName: UINavigationItem!
    @IBOutlet weak var sheButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myName.title = "\(getMyPersonInfo().name) \(getMyPersonInfo().surname)"
        
        sheButton.layer.cornerRadius = 10
    }

}
