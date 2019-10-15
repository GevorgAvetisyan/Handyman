//
//  OnBoardingThirdViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/14/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class OnBoardingThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override var prefersHomeIndicatorAutoHidden: Bool {
          return true
      }
    
    @IBAction func skipAction(_ sender: UIButton) {
        let startStoryboard = UIStoryboard(name: "Start", bundle: nil)
        let vc = startStoryboard.instantiateViewController(identifier: "StartViewController") as! StartViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
