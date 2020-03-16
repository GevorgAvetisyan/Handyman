//
//  RegisterViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/15/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

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
    @IBAction func logInAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        vc.userType = self.userType
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func signupAction(_ sender: UIButton) {
        let st = UIStoryboard(name: "SignUp", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        vc.userType = self.userType
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
