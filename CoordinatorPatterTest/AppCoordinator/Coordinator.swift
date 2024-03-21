//
//  Coordinator.swift
//  CoordinatorPatterTest
//
//  Created by Chung Wussup on 3/20/24.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
