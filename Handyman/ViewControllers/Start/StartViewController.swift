//
//  StartViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/14/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    

    @IBAction func handymanAction(_ sender: UIButton) {
        self.goToRegister(userType: "Handyman")
    }
    
    @IBAction func customerAction(_ sender: UIButton) {
        self.goToRegister(userType: "Customer")
    }
    
    func goToRegister(userType:String) {
        let vc = self.storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        vc.userType = userType
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
