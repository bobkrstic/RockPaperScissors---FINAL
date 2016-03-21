//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Slobodan Krstic on 2/27/16.
//  Copyright © 2016 Slobodan Krstic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // var playerMove : String?
    
    @IBOutlet var rockButton: UIButton?
    @IBOutlet var paperButton: UIButton?
    @IBOutlet var scissorsButton: UIButton?

    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        paperButton!.tag = 2
        scissorsButton!.tag = 3
        print("something")
        */
        
        
    }
*/
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Play"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "History", style: UIBarButtonItemStyle.Plain, target: self, action: "history")
        
        
        
        paperButton!.tag = 2
        scissorsButton!.tag = 3
        print("something")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    
    /*
    @IBAction func goToResultScreen(sender: UIButton) {
        
        performSegueWithIdentifier("resultScreen", sender: nil)
        
    }
    */
    
    
    
    func history() {
        print("Start Over")     // any text to test
        //self.dismissViewControllerAnimated(true, completion: nil)
        
        
        
        //let c = storyboard!.instantiateViewControllerWithIdentifier("showHistory") as! HistoryViewController
        
        
        
        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("showHistory") as! HistoryViewController
        //self.navigationController?.pushViewController(secondViewController, animated: true)
        
        
        
        
        
        
        //c.playerMove = "History"
        // now speak to navigation controller
        // this is the hard way
        // have iba action and code here
        self.navigationController!.pushViewController(secondViewController, animated: true)
        //self.navigationController!.popToRootViewControllerAnimated(true)
        //self.navigationItem.hidesBackButton = true
    }
    

    
    
    @IBAction func rockButton (sender: UIButton) {
        
        let rock = storyboard!.instantiateViewControllerWithIdentifier("Result Screen") as! ResultScreen
        
        presentViewController(rock, animated: true, completion: nil)
        rock.userChoice = "Rock"
    }
    

    @IBAction func paperButton(sender: UIButton) {
        // resultVar = "Paper"
        // paperButton is identifier
        performSegueWithIdentifier("paperButton", sender: sender)  // sender from line 36
        
    }

    
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Print prepareForSegue")
    let controller = segue.destinationViewController as! ResultScreen
         //let scissors = "Scissors"
         // i know what the destringation is i want a nice handle
         // controller.resultVar = scissors
        
        
        // if segue.identifier == "scissors" ... { do something }
        // prepareForSegue has a problem identifying what was pressed
        // this is solved with if or switch statements, or tag
        switch sender!.tag {
        case 2: controller.userChoice = "Paper"
        case 3: controller.userChoice = "Scissors"
        default: break
        }
    }
    
    
}

