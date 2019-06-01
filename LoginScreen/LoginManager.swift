//
//  LoginManager.swift
//  LoginScreen
//
//  Created by Gokul Viswanathan on 2019-05-31.
//  Copyright © 2019 Gokul Viswanathan. All rights reserved.
//

import Foundation

class LoginManager {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func login() -> Bool {
        return username == "test" && password == "test" ? true : false
    }
}
