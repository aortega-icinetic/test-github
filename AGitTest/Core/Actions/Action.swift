//
//  Action.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

/**
 Generic protocol to handle actions
 */
protocol Action {

    /**
     Execute action
     */
    func execute()
    
    /**
     Check if the action can be executed
     */
    func canBeExecuted() -> Bool
}
