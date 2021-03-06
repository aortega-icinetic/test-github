//
//  PhoneAction.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

class PhoneAction: UriAction {
    
    let prefix = "telprompt:"
    
    override init(uri: String? = nil) {
        
        guard let uri = uri?.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet()) where !uri.isEmpty else {
        
            super.init(uri: nil)
            return
        }
        
        super.init(uri: "\(prefix)\(uri)")
    }
}