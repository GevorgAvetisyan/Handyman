//
//  CustomTextField.swift
//  Handyman
//
//  Created by Gevorg Avetisyan on 10/23/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit

protocol CustomTextFieldDelegate {
    func showAction()
}

extension CustomTextFieldDelegate{
    func showAction(){}
}

class CustomTextField: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    var delegate:CustomTextFieldDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("CustomTextField", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.backgroundColor = .clear
        contentView.layer.masksToBounds = false
        contentView.layer.cornerRadius = 6
    }
    
    @IBAction func showAction(_ sender: UIButton) {
        self.delegate?.showAction()
    }
}
