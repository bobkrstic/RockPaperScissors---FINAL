//
//  ModelViewController.swift
//  RockPaperScissors
//
//  Created by Slobodan Krstic on 3/19/16.
//  Copyright © 2016 Slobodan Krstic. All rights reserved.
//

import Foundation


class RPSMatchModel {
    
    
    
    
    struct RPSMatch {
        
        var computerChoice : String = ""
        var usersChoice : String = ""
        var matchResult : String = ""
        
    }
    
    
    static var matchesHistory = [RPSMatch]()
    
    
    
    static func getMatches() -> Array<RPSMatch> {
        
        return matchesHistory
        
    }
    
    
    
    
    static func setMatch(uc: String, cc: String, r: String) {
        var match = RPSMatch()
        match.computerChoice = cc
        match.usersChoice = uc
        match.matchResult = r
        matchesHistory.append(match)
    }
    
    
}