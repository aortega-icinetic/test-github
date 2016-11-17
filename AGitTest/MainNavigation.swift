//
//  MainNavigation.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Foundation
import SlideMenuControllerSwift

class MainNavigation {

    var rootViewController: UIViewController!
    
    lazy var mainController: UIViewController! = {
		let mainViewController = CategoriesViewController()
        mainViewController.addLeftBarButtonWithImage(UIImage(named: Images.navMenu)!)
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        
        return SlideMenuController(mainViewController: mainNavigationController, leftMenuViewController: MainMenuViewController())
    }()

    var loginViewController: LoginViewController?
    
    init() {
        
        loginViewController = LoginViewController()
        loginViewController!.loginService = BasicAuthLoginService(appId: "f3ccf19c-5faa-4c97-bc56-ed6d5daf35ac")
        loginViewController!.mainViewController = mainController
        
        rootViewController = UINavigationController(rootViewController: loginViewController!)
    }
    
    func logout() {
    
        if let loginViewController = loginViewController, mainViewController = loginViewController.mainViewController {
            
            LoginManager.sharedInstance.reset()
            
            mainViewController.dismissViewControllerAnimated(true, completion: {
            
                self.mainController = nil
                loginViewController.mainViewController = self.mainController
            })
        }
    }
		
}

