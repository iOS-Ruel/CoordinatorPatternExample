//
//  LoginCoordinator.swift
//  CoordinatorPatterTest
//
//  Created by Chung Wussup on 3/20/24.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.view?.backgroundColor = .red
        self.navigationController.viewControllers = viewController
        
    }
    
    
}
