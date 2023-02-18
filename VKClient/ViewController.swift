//
//  ViewController.swift
//  VKClient
//
//  Created by Ulan Beishenkulov on 18/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if loginTextField.text == "w" && passwordTextField.text == "q" {
            performSegue(withIdentifier: "Login", sender: nil)
        } else {
            showAlert(message: "Неверный логин или пароль")
            return }
    }
}

