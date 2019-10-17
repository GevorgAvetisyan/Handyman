//
//  ForgotPasswordViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/15/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    var userType = ""
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
