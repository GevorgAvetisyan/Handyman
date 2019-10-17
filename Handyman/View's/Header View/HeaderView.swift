//
//  HeaderView.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/16/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

protocol HeaderViewDelegate {
    func backAction()
    func confirmAction()
}

extension HeaderViewDelegate{
    func backAction(){}
    func confirmAction(){}
}

class HeaderView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    var delegate:HeaderViewDelegate?
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           self.commonInit()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           self.commonInit()
       }
       
       private func commonInit(){
           Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
           addSubview(contentView)
           contentView.frame = self.bounds
       }
    @IBAction func backAction(_ sender: UIButton) {
        self.delegate?.backAction()
    }
    
    @IBAction func confirmAction(_ sender: UIButton) {
        self.delegate?.confirmAction()
    }
}
