//
//  Analytics.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

protocol Analytics {
    func logRequest(url:String, method:String)
    func logResponse(url:String, code:String, body: AnyObject)
    func logPage(page: String)
    func logAction(action: String, entity: String, identifier: String)
    func logAction(action: String, entity: String)
    func logAction(action: String, target: String, datasourceName: String)
    func logAction(action: String, target: String)
}