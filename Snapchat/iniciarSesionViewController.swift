//
//  ViewController.swift
//  Snapchat
//
//  Created by Mac 09 on 10/27/21.
//  Copyright © 2021 Mac 09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
           (user, error) in
            print("Intentando iniciar sesión")
            if error != nil {
                print("Se presentó el siguiente error: \(error)")
            } else {
                print("Inicio de sesión exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

