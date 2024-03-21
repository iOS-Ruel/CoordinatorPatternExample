//
//  LoginViewController.swift
//  CoordinatorPatterTest
//
//  Created by Chung Wussup on 3/20/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let item = UIBarButtonItem(title: "로그인", style: .plain, target: self, action: #selector(self.loginButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
        
    }

    deinit {
        print("-- \(type(of: self)) deinit")
    }
    
    @objc func loginButtonDidTap() {
        
    }
}
