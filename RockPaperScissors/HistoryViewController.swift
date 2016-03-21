//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Slobodan Krstic on 3/18/16.
//  Copyright © 2016 Slobodan Krstic. All rights reserved.
//

import Foundation
import UIKit


// this will just represent / display the results

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //var playerMove : String?
    
    
    @IBOutlet weak var tableView : UITableView!
    
    //var matches = [RPSMatchModel.RPSMatch()]
    
    var matches = [String]()
    
    
    
    override func viewDidLoad() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // self.matches = RPSMatchModel.getMatches()
        self.matches = ["Text 1", "Text2", "Text3"]
    }
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        //let match = self.matches[indexPath.row] as? RPSMatchModel.RPSMatch
        let match = self.matches[indexPath.row] as? String
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as? UITableViewCell //, forIndexPath: indexPath)
        
        //cell!.textLabel!.text = match!.usersChoice + " " + (match?.computerChoice)! + " " + match!.matchResult
        
        cell!.textLabel!.text = match
        
        //let colorCell = cell as! ColorTableViewCell
        
        //let colorName = colorNames[indexPath.row]
        
        //colorCell.colorView.backgroundColor = colors[colorName]
        //colorCell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell!
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return RPSMatchModel.getMatches().count
        
    }
    
    
    
    
}
