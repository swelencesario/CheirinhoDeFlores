//
//  ViewController+Extensions.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 18/03/24.
//

import UIKit

extension UIViewController {
    func callErrorAlert(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Entendi", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        return alert
    }
    
    func notValidTextFieldStyle(textField: UITextField) {
        textField.layer.borderColor = UIColor(named: "redColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
    }
    
    func validTextFieldStyle(textField: UITextField) {
        textField.layer.borderColor = nil
        textField.layer.borderWidth = 0
    }
}
