//
//  UserViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 14/03/24.
//

import UIKit

class UserViewController: UIViewController {
    
    let userViewModel = UserViewModel()
    var isValidFullName: Bool = false
    var isValidUsername: Bool = false
    var isValidPassword: Bool = false
    var isValidEmail: Bool = false
    var isValidPhone: Bool = false
    
    @IBOutlet weak var fullNameOutlet: UITextField!
    @IBOutlet weak var usernameOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var goToAddressButton: UIButton!
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var phoneOutlet: UITextField!
    
    @IBAction func fullNameEditingChanged(_ sender: Any) {
        validateFullName()
    }
    
    @IBAction func usernameEditingChanged(_ sender: Any) {
        validateUsername()
    }
    
    @IBAction func passwordEditingChanged(_ sender: Any) {
        validadePassword()
    }
    
    @IBAction func emailEditingChanged(_ sender: Any) {
        validadeEmail()
    }
    
    @IBAction func phoneEditingChanged(_ sender: Any) {
        validadePhone()
    }
    @IBAction func goToAddress(_ sender: Any) {
        validateTextFields()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let repository = UserRepository()
        repository.findUserById(userId: 18) { result in
            print(result as Any)
        }
    }
    
    func parseData() {
        userViewModel.fullName = fullNameOutlet.text?.capitalized
        userViewModel.username = usernameOutlet.text?.lowercased().trimmingCharacters(in: .whitespaces)
        userViewModel.email = emailOutlet.text?.lowercased()
        userViewModel.password = passwordOutlet.text
        userViewModel.phoneNumber = phoneOutlet.text
    }
    
    func validateFullName() {
        self.isValidFullName = userViewModel.isValidFullName(fullName: fullNameOutlet.text?.trimmingCharacters(in: .whitespaces) ?? "")
        if !isValidFullName {
            notValidTextFieldStyle(textField: fullNameOutlet)
        } else {
            validTextFieldStyle(textField: fullNameOutlet)
        }
    }
    
    func validateUsername() {
        self.isValidUsername = userViewModel.isValidUsername(username: usernameOutlet.text ?? "")
        if !isValidUsername {
            notValidTextFieldStyle(textField: usernameOutlet)
        } else {
            validTextFieldStyle(textField: usernameOutlet)
        }
    }
    
    func validadePassword() {
        self.isValidPassword = userViewModel.isValidPassword(password: passwordOutlet.text ?? "")
        if !isValidPassword {
            notValidTextFieldStyle(textField: passwordOutlet)
        } else {
            validTextFieldStyle(textField: passwordOutlet)
        }
    }
    
    func validadeEmail() {
        self.isValidEmail = userViewModel.isValidMail(email: emailOutlet.text ?? "")
        if !isValidEmail {
            notValidTextFieldStyle(textField: emailOutlet)
        } else {
            validTextFieldStyle(textField: emailOutlet)
        }
    }
    
    func validadePhone() {
        self.isValidPhone = userViewModel.isValidPhoneNumber(phone: phoneOutlet.text ?? "")
        if !isValidPhone {
            notValidTextFieldStyle(textField: phoneOutlet)
        } else {
            validTextFieldStyle(textField: phoneOutlet)
        }
    }
    
    func validateTextFields() {
        if isValidFullName &&
            isValidUsername &&
            isValidPassword &&
            isValidEmail &&
            isValidPhone {
            parseData()
            userViewModel.addUser()
        } else {
            callErrorAlert(title: "Erro", message: "Por favor, preencha os campos corretamente")
        }
    }
}
