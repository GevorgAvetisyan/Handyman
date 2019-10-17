//
//  LogInViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/15/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var userType = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func loginAction(_ sender: DesignableButton) {
        Auth.auth().signIn(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (authResult, error) in
            guard authResult != nil && error == nil else {
                print("Faild")
                return
            }
            print("sucess")
        }
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
