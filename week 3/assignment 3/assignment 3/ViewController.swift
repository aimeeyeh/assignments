//
//  ViewController.swift
//  assignment 3
//
//  Created by Chih-Chen Yeh on 2021/3/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var control: UISegmentedControl!
    @IBOutlet var AccountTextfield: UITextField!
    @IBOutlet var PasswordTextfield: UITextField!
    @IBOutlet var CheckTextfield: UITextField!
    @IBOutlet var CheckLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureControl()
        CheckTextfield.isEnabled = false
        CheckTextfield.backgroundColor = .gray
        CheckLabel.textColor = .gray
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AccountTextfield.becomeFirstResponder()
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            CheckTextfield.isEnabled = false
            CheckTextfield.backgroundColor = .gray
            CheckLabel.textColor = .gray
            
        }else if sender.selectedSegmentIndex == 1 {
            CheckTextfield.isEnabled = true
            CheckTextfield.backgroundColor = .white
            CheckLabel.textColor = .black
        }
    }

    func configureControl(){
        control.backgroundColor = UIColor.black
        control.layer.borderColor = UIColor.white.cgColor
        control.selectedSegmentTintColor = UIColor.white
        control.layer.borderWidth = 1
        control.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        control.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
    }

    @IBAction func showAlert(){
        
        let logInSuccessAlert = UIAlertController(title: "Welcome", message: "Login successful!", preferredStyle: .alert)
        let emptyAccountAlert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
        let emptyPasswordAlert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
        let wrongInputAlert = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
        
        let signUpSuccessAlert = UIAlertController(title: "Welcome", message: "Signup successful!", preferredStyle: .alert)
        let wrongCheckInputAlert = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: .alert)
        
        
        
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    
        emptyAccountAlert.addAction(action)
        emptyPasswordAlert.addAction(action)
        logInSuccessAlert.addAction(action)
        wrongInputAlert.addAction(action)
        signUpSuccessAlert.addAction(action)
        wrongCheckInputAlert.addAction(action)
        
        
        if self.control.selectedSegmentIndex == 0 {
            if AccountTextfield.text == "appworks_school@gmail.com" && PasswordTextfield.text == "1234"{
                present(logInSuccessAlert, animated: true, completion: nil)
            }else if AccountTextfield.text == "" {
                present(emptyAccountAlert, animated: true, completion: nil)
            }else if PasswordTextfield.text == "" {
                present(emptyPasswordAlert, animated: true, completion: nil)
            }else{
                present(wrongInputAlert, animated: true, completion: nil)
            }
        }else if self.control.selectedSegmentIndex == 1 {
            if AccountTextfield.text == "" {
                present(emptyAccountAlert, animated: true, completion: nil)
            }else if PasswordTextfield.text == "" {
                present(emptyPasswordAlert, animated: true, completion: nil)
            }else if PasswordTextfield.text != CheckTextfield.text {
                present(wrongCheckInputAlert, animated: true, completion: nil)
            }else{
                present(signUpSuccessAlert, animated: true, completion: nil)
            }
        }
    }
    
    
    
}



        
