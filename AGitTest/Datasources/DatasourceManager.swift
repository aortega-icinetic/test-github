//
//  DatasourceManager.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class DatasourceManager {

	static let sharedInstance = DatasourceManager()
	
	lazy var EmptyDatasource: LocalDatasource<Item1> = {
    
        return LocalDatasource<Item1>(resource: DatasourceConfig.Local.EmptyDatasource.resource) 
    }()
	
	
	lazy var Screen0DS: CloudDatasource<Screen0DSItem> = {
    
        return CloudDatasource<Screen0DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.Screen0DS.resource,
                                             apikey: DatasourceConfig.Cloud.Screen0DS.apiKey,
                                             searchableFields: [Screen0DSItemMapping.name, Screen0DSItemMapping.description, Screen0DSItemMapping.phone, Screen0DSItemMapping.address, Screen0DSItemMapping.rating, Screen0DSItemMapping.c1, Screen0DSItemMapping.1c]) 
    }()
	
	lazy var RestaurantsDS: CloudDatasource<RestaurantsDSItem> = {
    
        return CloudDatasource<RestaurantsDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.RestaurantsDS.resource,
                                             apikey: DatasourceConfig.Cloud.RestaurantsDS.apiKey,
                                             searchableFields: [RestaurantsDSItemMapping.name, RestaurantsDSItemMapping.description, RestaurantsDSItemMapping.phone, RestaurantsDSItemMapping.address, RestaurantsDSItemMapping.rating, RestaurantsDSItemMapping.1Content]) 
    }()
	
	lazy var LawyersScreen1DS: CloudDatasource<LawyersScreen1DSItem> = {
    
        return CloudDatasource<LawyersScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.LawyersScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.LawyersScreen1DS.apiKey,
                                             searchableFields: [LawyersScreen1DSItemMapping.name, LawyersScreen1DSItemMapping.description, LawyersScreen1DSItemMapping.phone, LawyersScreen1DSItemMapping.address, LawyersScreen1DSItemMapping.rating]) 
    }()
	
	lazy var GymsScreen1DS: CloudDatasource<GymsScreen1DSItem> = {
    
        return CloudDatasource<GymsScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.GymsScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.GymsScreen1DS.apiKey,
                                             searchableFields: [GymsScreen1DSItemMapping.name, GymsScreen1DSItemMapping.description, GymsScreen1DSItemMapping.phone, GymsScreen1DSItemMapping.address, GymsScreen1DSItemMapping.rating]) 
    }()
	
}
