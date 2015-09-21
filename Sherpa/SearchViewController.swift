//
//  SearchViewController.swift
//  Maven
//
//  Created by Praynaa Rawlani on 9/20/15.
//  Copyright (c) 2015 Arun Rawlani. All rights reserved.
//

import Foundation

class SearchViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    var theJudge = ["alexisOhan", "ericMigi", "qasarYounus", "mike", "sandro", "evan", "steven", "libor"]
    
    
    
}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("okayyyyyyyy")
        return self.theJudge.count ?? 0
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        if (theJudge.count == 0) {
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SearchCell") as! SearchViewCell
        
        let randomIndex = Int(arc4random_uniform(UInt32(theJudge.count)))
        var judgeChosen = (theJudge[indexPath.row])
        //cell.influencerPhoto.image = UIImage(named: judgeChosen)
        if (judgeChosen == "alexisOhan"){
            cell.influencerName.text = "Alexis Ohanian"
            cell.influencerCategory.text = "Blogging, Entreprenuership"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "ericMigi"){
            cell.influencerName.text = "Eric Migicovsky"
            cell.influencerCategory.text = "Design, Hardware"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "mike"){
            cell.influencerName.text = "Mike Kirkup"
            cell.influencerCategory.text = "Design, Management"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "sandro"){
            cell.influencerName.text = "Sandro Mur"
            cell.influencerCategory.text = "Music, Glamour"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "evan"){
            cell.influencerName.text = "Evan Clayton"
            cell.influencerCategory.text = "Clothing, Fashion"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "steven"){
            cell.influencerName.text = "Steven Woods"
            cell.influencerCategory.text = "Google, Innovation"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else if ( judgeChosen == "libor"){
            cell.influencerName.text = "Libor Michalek"
            cell.influencerCategory.text = "Technology, Startup"
            cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        else{
            cell.influencerName.text = "Qasar Younus"
            cell.influencerCategory.text = "Growth Hacking, Software"
             cell.influencerIndex.text = String(arc4random_uniform(50) + 50)
        }
        
//        cell.influencerPhoto.layer.cornerRadius = cell.influencerPhoto.frame.size.width / 2
//        cell.influencerPhoto.clipsToBounds = true
//        cell.influencerPhoto.layer.borderWidth = 1.0
//        cell.influencerPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None // SEE THIS
        
        return cell
    }
}
