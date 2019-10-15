//
//  OnBoardingFirstViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/14/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class OnBoardingFirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override var prefersHomeIndicatorAutoHidden: Bool {
          return true
      }
    
    @IBAction func skipAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "OnBoardingSecondViewController") as! OnBoardingSecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
