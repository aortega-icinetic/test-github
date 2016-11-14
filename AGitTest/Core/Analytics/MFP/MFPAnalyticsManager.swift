//
//  MFPAnalyticsManager.swift
//  AGitTest
//
//  Created by Icinetic on 23/8/16.
//  Copyright © 2016 Icinetic S.L. All rights reserved.
//

import Foundation
import IBMMobileFirstPlatformFoundation

class MFPAnalyticsManager : AnalyticsManager  {
    
    override init(){
        super.init()
        WLAnalytics.sharedInstance().enable();
		WLAnalytics.sharedInstance().startRecordingApplicationLifecycleEvents()
        WLAnalytics.sharedInstance().sendWithDelegate(nil);
        analytics = MFPAnalytics()
        logger = MFPLogger()
    }
}