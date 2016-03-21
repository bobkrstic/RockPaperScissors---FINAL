//
//  resultScreen.swift
//  RockPaperScissors
//
//  Created by Slobodan Krstic on 2/27/16.
//  Copyright © 2016 Slobodan Krstic. All rights reserved.
//

import Foundation
import UIKit
import Darwin

class ResultScreen: UIViewController {
    
    
    @IBOutlet var computerChoice: UILabel!
    @IBOutlet var resultLabel: UILabel!
    var userChoice = ""
    var finalResult = ""
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Current Result"
    
    }
    
    
    
    
    @IBAction func dismissMyself(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
        // inhertited  method
        // completion is a closure
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        let randomNumber = Int(arc4random_uniform(3))
        
        switch randomNumber {
        case 0:
            computerChoice.text = "Rock"
            switch userChoice {
            case "Rock":
                finalResult = "Tie"
            case "Paper":
                finalResult = "Win"
            case "Scissors":
                finalResult = "Loss"
            default: finalResult = "Error"
                break
            }
        case 1:
            computerChoice.text = "Paper"
            switch userChoice {
            case "Rock":
                finalResult = "Loss"
            case "Paper":
                finalResult = "Tie"
            case "Scissors":
                finalResult = "Win"
            default: finalResult = "Error"
                break
            }
            
        default:
            computerChoice.text = "Scissors"
            switch userChoice {
            case "Rock":
                finalResult = "Win"
            case "Paper":
                finalResult = "Loss"
            case "Scissors":
                finalResult = "Tie"
            default: finalResult = "Error"
                break
            }
        }
        
        resultLabel.text = " \(userChoice) vs. \(computerChoice.text!).  \(finalResult)."
        
        
        RPSMatchModel.setMatch(userChoice, cc: computerChoice.text!, r: finalResult)
        
        
        
    }
}