//
//  DjonyInfoViewController.swift
//  MyResume
//
//  Created by Brubrusha on 10/25/20.
//

import UIKit

class DjonyInfoViewController: UIViewController {

    @IBOutlet weak var fotoInClab: UIImageView!
    @IBOutlet weak var fotoInCar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoInClab.layer.cornerRadius = 20
        fotoInCar.layer.cornerRadius = 20
    }
}
