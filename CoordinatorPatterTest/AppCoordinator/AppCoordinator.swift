//
//  AppCoordinator.swift
//  CoordinatorPatterTest
//
//  Created by Chung Wussup on 3/20/24.
//

import Foundation
import UIKit


class AppCoordinator: Coordinator, LoginCoordinatorDelegate, MainCoordinatorDelegate {
    
    var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController!
    
    var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if self.isLoggedIn {
            self.showMainViewController()
        } else {
            self.showLoginViewController()
        }
    }
    
    private func showMainViewController() {
        let coordinator = MainCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    func didLoggedOut(_ coordinator: MainCoordinator) {
        self.childCoordinators = self.childCoordinators.filter({ $0 !== coordinator })
        self.showLoginViewController()
    }
    
    
    private func showLoginViewController() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    func didLoggedIn(_ coordinator: Coordinator) {
        self.childCoordinators = self.childCoordinators.filter({ $0 !== coordinator })
        self.showMainViewController()
    }
    
    func didPushButton(_ coordinator: MainCoordinator) {
        
    }
    
  
    
}
