//
//  ThirdViewController.swift
//  IOSsample - Tidyware
//
//  Created by Carlos A Manrique Ucharico on 5/6/21.
//  Copyright © 2021 Carlos A Manrique Ucharico. All rights reserved.
//
import UIKit
import Foundation
import Alamofire

class ThirdViewController : UIViewController{
    
    @IBOutlet weak var textResponse: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Alamofire.request("https://jsonplaceholder.typicode.com/todos/1").responseJSON{ (response)-> Void in
            
                if let JSON = response.result.value{
                    // printing in the console
                    print(JSON)
                    
                    //editing text
                    self.textResponse.text = "\(JSON)"
                }
        }
    }
    
}
