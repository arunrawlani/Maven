//
//  ChoiceViewController.swift
//  Maven
//
//  Created by Praynaa Rawlani on 9/20/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import Foundation

class ChoiceViewController: UIViewController {
    

    @IBAction func influencerPressed(sender: UIButton) {
        
        performSegueWithIdentifier("influencer", sender:nil)
    }
    @IBAction func brandPressed(sender: UIButton) {
        performSegueWithIdentifier("brand", sender: nil)
        
    }
}