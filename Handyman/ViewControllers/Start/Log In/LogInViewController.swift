//
//  LogInViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/15/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func forgotAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
