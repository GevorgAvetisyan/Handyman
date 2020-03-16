//
//  OnBoardingSecondViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/14/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

class OnBoardingSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override var prefersHomeIndicatorAutoHidden: Bool {
          return true
      }

    @IBAction func skipAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OnBoardingThirdViewController") as! OnBoardingThirdViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
