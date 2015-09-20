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
    
    override func viewDidLoad() {
        let reactionTimeData = BarGraph(frame: CGRectMake(20, -80, 330, 200))
        self.view.addSubview(reactionTimeData)
    }
    
}