//
//  DatasourceConfig.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation
 
 enum DatasourceConfig {

	
	enum Local {

		enum EmptyDatasource{
			
			static let resource = "EmptyDatasource"
		}
	}
	 
	
	enum Cloud {
		
		static let baseUrl = "https://baked-devel-ibm.herokuapp.com"

		enum Screen0DS{
			
			static let resource = "/app/57e39f3548a7ca0300f2c3f6/r/screen0DS"
			static let apiKey = "iXPkiXTB"
		}

		enum RestaurantsDS{
			
			static let resource = "/app/57e39f3548a7ca0300f2c3f6/r/restaurantsDS"
			static let apiKey = "iXPkiXTB"
		}

		enum LawyersScreen1DS{
			
			static let resource = "/app/57e39f3548a7ca0300f2c3f6/r/lawyersScreen1DS"
			static let apiKey = "iXPkiXTB"
		}

		enum GymsScreen1DS{
			
			static let resource = "/app/57e39f3548a7ca0300f2c3f6/r/gymsScreen1DS"
			static let apiKey = "iXPkiXTB"
		}
	}


}
