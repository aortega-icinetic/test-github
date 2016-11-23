//
//  BasicAuthLoginService.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class BasicAuthLoginService {
    
    var httpClient: HttpClient<LoginResponse>
    
    var url: String
    
    init(serviceUrl: String) {
        self.url = serviceUrl
        httpClient = HttpClient<LoginResponse>()
    }
}

extension BasicAuthLoginService: LoginService {

    func login(user: String, password: String, success: ((LoginResponse) -> Void), failure: ((NSError?) -> Void)) {
        
        httpClient.auth(user, password: password)
        
        httpClient.post(url, parameters: nil, success: { (response) in
            
            success(response as! LoginResponse)
            
        }, failure: failure)
    }
}