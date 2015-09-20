//
//  InfluencerViewController.swift
//  Maven
//
//  Created by Praynaa Rawlani on 9/20/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import Foundation
import UIKit
import PNChartSwift


class InfluencerViewController: UIViewController{
    
@IBOutlet weak var riskButton: UIButton!
    override func viewDidLoad() {
        let reactionTimeData = BarGraph(frame: CGRectMake(20, -80, 330, 200))
        self.view.addSubview(reactionTimeData)
    }
    
    @IBAction func computeIndex(sender: AnyObject) {
        
        riskButton.hidden = true
        self.demoSpinner()
    }
    
    func delay(#seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
        
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }
    
    func demoSpinner() {
        
        SwiftSpinner.showWithDelay(2.0, title: "It's taking longer than expected")
        
        delay(seconds: 0.0, completion: {
            SwiftSpinner.show("Computing Social Index")
        })
        
        delay(seconds: 3.0, completion: {
            SwiftSpinner.show("Fetching session data")
        })
        
        delay(seconds: 5.0, completion: {
            SwiftSpinner.show("Analyzing trends", animated: false)
        })
        
        delay(seconds: 6.0, completion: {
            SwiftSpinner.setTitleFont(UIFont(name: "Futura", size: 22.0))
            SwiftSpinner.show("Computed")
        })
        
        delay(seconds: 7.0, completion: {
            SwiftSpinner.hide()
            self.performSegueWithIdentifier("compute", sender: nil)
        })
   
    }
}