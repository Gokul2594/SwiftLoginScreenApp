//
//  ViewController.swift
//  LoginScreen
//
//  Created by Gokul Viswanathan on 2019-05-31.
//  Copyright © 2019 Gokul Viswanathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onLoginClick(_ sender: Any) {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        let loginManager = LoginManager(username: username, password: password)
        
        if(loginManager.login() && counter <= 3 ){
            errorLabel.text = "Success"
            errorLabel.textColor = UIColor.green
            errorLabel.textAlignment = NSTextAlignment.center
            errorLabel.isHidden = false
        }
        else{
            counter += 1
            if(counter == 3) {
                submitButton.isEnabled = false
                errorLabel.text = "Invalid credentials. You have been locked out"
                errorLabel.textColor = UIColor.red
            }
            else{
                errorLabel.textColor = UIColor.red
                errorLabel.text = "Invalid credentials. You have " + String(3 - counter) + " attemps left"
                errorLabel.isHidden = false
            }
        }
    }
    
    
}

