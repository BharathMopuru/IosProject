//
//  ViewController.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 4/9/23.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signinClicked(_ sender: UIButton) {
        statusLable.text = ""
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error{
                print("error")
                self.statusLable.text = "please check the Entered details."
            }
            else{
                // go to our home screen
                self.performSegue(withIdentifier: "gotonext", sender: self)
            }
        }
    }
    
}

