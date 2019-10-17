//
//  MainNavigationController.swift
//  Blackjack
//
//  Created by Gev Avetisyan on 07.02.2019.
//  Copyright © 2019 Gev. All rights reserved.
//

import UIKit
import Firebase
class MainNavigationController: UINavigationController {
    
    var onBoardinStoryboard:UIStoryboard? = nil
    var startStoryboard:UIStoryboard? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showViewController()
    }



    //MARK: - Methods -


    func showViewController()  {
        self.onBoardinStoryboard = UIStoryboard(name: "OnBoarding", bundle: nil)
        self.startStoryboard = UIStoryboard(name: "Start", bundle: nil)
        let isFirstTime = UserDefaults.standard.bool(forKey: "isFirstTime")
        guard isFirstTime == false else {
            let vc = onBoardinStoryboard?.instantiateViewController(identifier: "OnBoardingFirstViewController") as! OnBoardingFirstViewController
            pushViewController(vc, animated: true)
            return
        }
        
        let vc = startStoryboard?.instantiateViewController(identifier: "StartViewController") as! StartViewController
        pushViewController(vc, animated: true)
    }
}
