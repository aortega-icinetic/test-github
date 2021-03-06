//
//  Screen0DSItem.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

enum Screen0DSItemMapping {
	static let name = "name"
	static let description = "description"
	static let picture = "picture"
	static let phone = "phone"
	static let location = "location"
	static let address = "address"
	static let rating = "rating"
	static let c1 = "c1"
	static let 1c = "1c"
	static let id = "id"
}

public class Screen0DSItem : Item {
	
	var name : String?
	var description : String?
	var picture : String?
	var phone : String?
	var location : GeoPoint?
	var address : String?
	var rating : String?
	var c1 : String?
	var 1c : String?
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		name = dic[Screen0DSItemMapping.name] as? String
		
		description = dic[Screen0DSItemMapping.description] as? String
		
		picture = dic[Screen0DSItemMapping.picture] as? String
		
		phone = dic[Screen0DSItemMapping.phone] as? String
		
			
		location = GeoPoint(dictionary: dic[Screen0DSItemMapping.location] as? NSDictionary)
		
		address = dic[Screen0DSItemMapping.address] as? String
		
		rating = dic[Screen0DSItemMapping.rating] as? String
		
		c1 = dic[Screen0DSItemMapping.c1] as? String
		
		1c = dic[Screen0DSItemMapping.1c] as? String
		
		id = dic[Screen0DSItemMapping.id] as? String
		
	   
    }
}
	
