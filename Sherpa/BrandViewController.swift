//
//  BrandViewController.swift
//  Maven
//
//  Created by Praynaa Rawlani on 9/20/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import Foundation
import UIKit
import PNChartSwift

class BrandViewController: UIViewController{

    @IBOutlet weak var viewMore: UIButton!
    @IBAction func pressMore(sender: AnyObject) {
        
    performSegueWithIdentifier("search", sender: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    var ranJudge = ["alexisOhan", "ericMigi", "qasarYounus"]
    var ranEffect = ["increase", "decrease", "increase"]
    override func viewDidLoad() {
        self.viewMore.hidden = true
        let eegData = LineGraph(frame: CGRectMake(20, -80, 330, 200))
        self.view.addSubview(eegData)
    }
    
}

extension BrandViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ranJudge.count ?? 0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        if (ranJudge.count == 0) {
            var messageLabel = UILabel(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
            messageLabel.text = "No influencers yet"
            messageLabel.textColor = UIColor.whiteColor()
            messageLabel.font = UIFont(name: "Avenir Next", size: 27)
            messageLabel.numberOfLines = 1
            messageLabel.textAlignment = NSTextAlignment.Center
            messageLabel.sizeToFit()
            self.tableView.backgroundView = messageLabel
            self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
            return 0
        }
        else {
            self.tableView.backgroundView = nil
            self.tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("BrandCell") as! BrandViewCell
        
        let randomIndex = Int(arc4random_uniform(UInt32(ranJudge.count)))
        var judgeChosen = (ranJudge[indexPath.row])
        cell.influencerPhoto.image = UIImage(named: judgeChosen)
        if (judgeChosen == "alexisOhan"){
            cell.influencerName.text = "Alexis Ohan"
            cell.influencerDescription.text = "Reddit and maple syrup"
            cell.influencerEffect.image = UIImage(named: (ranEffect[randomIndex]))
        }
        else if ( judgeChosen == "ericMigi"){
            cell.influencerName.text = "Eric Migicovsky"
            cell.influencerDescription.text = "Pebble market share increases."
            cell.influencerEffect.image = UIImage(named: (ranEffect[randomIndex]))
        }
        else{
            cell.influencerName.text = "Qasar Younus"
            cell.influencerDescription.text = "Rapid growth of Y Combinator."
            cell.influencerEffect.image = UIImage(named: (ranEffect[randomIndex]))
        }
        
        cell.influencerPhoto.layer.cornerRadius = cell.influencerPhoto.frame.size.width / 2
        cell.influencerPhoto.clipsToBounds = true
        cell.influencerPhoto.layer.borderWidth = 1.0
        cell.influencerPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        return cell
    }
}
