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
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
    

    @IBAction func handymanAction(_ sender: UIButton) {
        self.goToRegister()
    }
    
    @IBAction func costumerAction(_ sender: UIButton) {
        self.goToRegister()
    }
    
    func goToRegister() {
        let vc = self.storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
