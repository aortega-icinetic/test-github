//
//  RestaurantsDSItem.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum RestaurantsDSItemMapping {
	static let name = "name"
	static let description = "description"
	static let picture = "picture"
	static let phone = "phone"
	static let location = "location"
	static let address = "address"
	static let rating = "rating"
	static let 1Content = "1Content"
	static let id = "id"
}

public class RestaurantsDSItem : Item {
	
	var name : String?
	var description : String?
	var picture : String?
	var phone : String?
	var location : GeoPoint?
	var address : String?
	var rating : String?
	var 1Content : String?
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
        
 		name = dic[RestaurantsDSItemMapping.name] as? String
		
		description = dic[RestaurantsDSItemMapping.description] as? String
		
		picture = dic[RestaurantsDSItemMapping.picture] as? String
		
		phone = dic[RestaurantsDSItemMapping.phone] as? String
		
			
		location = GeoPoint(dictionary: dic[RestaurantsDSItemMapping.location] as? NSDictionary)
		
		address = dic[RestaurantsDSItemMapping.address] as? String
		
		rating = dic[RestaurantsDSItemMapping.rating] as? String
		
		1Content = dic[RestaurantsDSItemMapping.1Content] as? String
		
		id = dic[RestaurantsDSItemMapping.id] as? String
		
	   
    }
}
	
