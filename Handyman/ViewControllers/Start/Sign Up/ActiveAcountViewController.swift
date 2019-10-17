//
//  ActiveAcountViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/16/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class ActiveAcountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cvrAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AddPayoutViewController") as! AddPayoutViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
