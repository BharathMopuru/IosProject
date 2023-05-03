//
//  CreateViewController.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 4/9/23.
//

import UIKit
import Firebase

class CreateViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var StatusLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        StatusLable.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error{
                print("error")
                self.StatusLable.text = "email id already exists"
            }
            else{
                self.StatusLable.text = "Sucessfull"
                // go to our home screen
                self.performSegue(withIdentifier: "gotonext", sender: self)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
