//
//  LoginService.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import Foundation

protocol LoginService {

    func login(user: String, password: String, success: ((LoginResponse) -> Void), failure: ((NSError?) -> Void))
}