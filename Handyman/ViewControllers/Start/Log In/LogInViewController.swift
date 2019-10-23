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
    
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    var userType = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.backgroundColor = .clear
        emailTextField.imageView.image = #imageLiteral(resourceName: "name")
        emailTextField.showButton.isHidden = true
        let pstImg = #imageLiteral(resourceName: "show")
        passwordTextField.showButton.setBackgroundImage(pstImg, for: .normal)
        passwordTextField.backgroundColor = .clear
        passwordTextField.imageView.image = #imageLiteral(resourceName: "password")
    }
    
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func loginAction(_ sender: DesignableButton) {
        Auth.auth().signIn(withEmail: self.emailTextField.textField.text!, password: self.passwordTextField.textField.text!) { (authResult, error) in
            guard authResult != nil && error == nil else {
                print("Faild")
                return
            }
            print("sucess")
            let st = UIStoryboard(name: "HandymanProfile", bundle: nil)
            let vc = st.instantiateViewController(identifier: "HandimanProfileViewController") as! HandimanProfileViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
