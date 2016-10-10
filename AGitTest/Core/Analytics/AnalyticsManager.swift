//
//  AnalyticsManager.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

class AnalyticsManager {
    
    static var sharedInstance : AnalyticsManager?
    
    var analytics: Analytics?
    
    var logger: Logger?
    
    static func setAnalytics(analytics: AnalyticsManager) {
        sharedInstance = analytics
    }
}
