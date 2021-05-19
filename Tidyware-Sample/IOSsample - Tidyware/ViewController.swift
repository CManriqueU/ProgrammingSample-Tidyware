//
//  ViewController.swift
//  IOSsample - Tidyware
//
//  Created by Carlos A Manrique Ucharico on 5/3/21.
//  Copyright © 2021 Carlos A Manrique Ucharico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
         startButton.clipsToBounds = true
        // Do any additional setup after loading the view.
    }


}

