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
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if loginTextField.text == "" && passwordTextField.text == "" {
            performSegue(withIdentifier: "Login", sender: nil)
        } else {
            showAlert(message: "Неверный логин или пароль")
            return }
    }
}
