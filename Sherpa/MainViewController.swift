//
//  MainViewController.swift
//  Sherpa
//
//  Created by Arun Rawlani on 23/8/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import Foundation
import SwiftLoader

class MainViewController: UIViewController{
    
    func delay(#seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
        
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }
    
    @IBAction func instaPressed(sender: UIButton) {
        self.demoSpinner()
    }
    
    func demoSpinner() {
        
         SwiftLoader.show(title:"Authenticating..", animated: true)
        
        delay(seconds: 2.0, completion: {
            SwiftLoader.hide()
        })
    }
    
    @IBOutlet weak var twitterButton: UIButton!
    @IBAction func twitterPressed(sender: AnyObject) {
        
        self.demoSpinner()

    }
    @IBOutlet weak var instaButton: UIButton!
    @IBAction func unwindToMainViewController (sender: UIStoryboardSegue){
         func instaPressed(sender: UIButton) {
        }
        // bug? exit segue doesn't dismiss so we do it manually...
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}