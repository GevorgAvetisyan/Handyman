//
//  SignUpViewController.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/16/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailtextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rePasswordTextField: UITextField!
    var ref: DatabaseReference!
    var handyman:Handyman?
    var customer:Customer?
    
    var userType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signupAction(_ sender: DesignableButton) {
        Auth.auth().createUser(withEmail: self.mailtextField.text!, password: self.passwordTextField.text!){ (authResult, error) in
            guard (authResult?.user) != nil else { return }
            if self.userType == "Handyman"{
                self.handyman = Handyman(name: self.nameTextField.text, email: self.mailtextField.text!, userId: (authResult?.user.uid)!)
                self.writeHandymanWithModel(user: self.handyman!)
            } else {
                self.customer = Customer(name: self.nameTextField.text, email: self.mailtextField.text!, userId: (authResult?.user.uid)!)
                self.writeCustomerWithModel(user: self.customer!)
            }
        }
    }
    
    func writeHandymanWithModel(user:Handyman) {
        self.ref = Database.database().reference()
        let child = ref.child("Handyman").child(user.userId!)
        child.child("name").setValue(user.name)
        child.child("email").setValue(user.email)
        child.child("userID").setValue(user.userId)
    }
    
    func writeCustomerWithModel(user:Customer) {
        self.ref = Database.database().reference()
        let child = ref.child("Customer").child(user.userId!)
        child.child("name").setValue(user.name)
        child.child("email").setValue(user.email)
        child.child("userID").setValue(user.userId)
    }
    
}
