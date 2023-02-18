import Foundation
import UIKit

extension ViewController {
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка",
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
}
