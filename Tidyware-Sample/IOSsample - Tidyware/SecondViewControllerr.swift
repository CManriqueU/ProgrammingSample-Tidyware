//
//  SecondViewControllerr.swift
//  IOSsample - Tidyware
//
//  Created by Carlos A Manrique Ucharico on 5/3/21.
//  Copyright © 2021 Carlos A Manrique Ucharico. All rights reserved.
//
import UIKit
import Foundation
import CoreMotion

class SecondViewController: UIViewController {
    
    @IBOutlet weak var xtextView: UITextView!
    @IBOutlet weak var ytextView: UITextView!
    @IBOutlet weak var ztextView: UITextView!
    
    @IBOutlet weak var xGyroscopeText: UITextView!
    @IBOutlet weak var yGyroscopeText: UITextView!
    @IBOutlet weak var zGyroscopeText: UITextView!
    
    @IBOutlet weak var requestPageButton: UIButton!
    
    var motion = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        requestPageButton.layer.cornerRadius = 10
         requestPageButton.clipsToBounds = true
        gyroscopeDemo()
    }
    
    func gyroscopeDemo() {
        motion.startGyroUpdates()
        motion.startAccelerometerUpdates()
        motion.accelerometerUpdateInterval = 3
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true ){ _ in
            if let data = self.motion.accelerometerData{
                //taking data from accelerometer
                let x = data.acceleration.x;
                let y = data.acceleration.y;
                let z = data.acceleration.z;
                
                // printing
                self.xtextView.text = "\(x)"
                self.ytextView.text = "\(y)"
                self.ztextView.text = "\(z)"
            }
            
            if let secondData = self.motion.gyroData{
                //taking data from gyroscope
                let x2 = secondData.rotationRate.x;
                let y2 = secondData.rotationRate.y;
                let z2 = secondData.rotationRate.z;
                
                // printing
                self.xGyroscopeText.text = "\(x2)"
                self.yGyroscopeText.text = "\(y2)"
                self.zGyroscopeText.text = "\(z2)"
            }
            
        }
    }
    
}
