//
//  LoginViewController.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 3/10/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
   
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
    }
  
    @IBAction func login(_ sender: UIButton) {
        // validate fields
        let email = EmailTextField.text!
        let password = PasswordTextField.text!//remove force un wrap
        //
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil{
                print(authResult)
            }
          // ...
        }
        
    }
    func validateFields()->String{
        var errorMessage = ""
        if EmailTextField.text!.isEmpty {
            
        }
        return errorMessage
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
