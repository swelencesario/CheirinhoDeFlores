//
//  UserViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 14/03/24.
//

import UIKit

class UserRegisterViewController: UIViewController {
    
    let userRegisterView = UserRegisterView()
    var userRegisterViewModel: UserRegisterViewModel
    var isValidFullName: Bool = false
    var isValidUsername: Bool = false
    var isValidPassword: Bool = false
    var isValidEmail: Bool = false
    var isValidPhone: Bool = false
    
    init(viewModel: UserRegisterViewModel) {
        self.userRegisterViewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addFieldTargets()
    }
    
    override func loadView() {
        self.view = userRegisterView
    }
    
    func parseData() {
        userRegisterViewModel.fullName = userRegisterView.fullNameField.text?.capitalized
        userRegisterViewModel.username = userRegisterView.usernameField.text?.lowercased().trimmingCharacters(in: .whitespaces)
        userRegisterViewModel.email = userRegisterView.emailField.text?.lowercased()
        userRegisterViewModel.password = userRegisterView.passwordField.text
        userRegisterViewModel.phoneNumber = userRegisterView.phoneField.text
    }
    
    func addFieldTargets() {
        userRegisterView.fullNameField.addTarget(self, action: #selector(validateFullName), for: .editingChanged)
        userRegisterView.usernameField.addTarget(self, action: #selector(validateUsername), for: .editingChanged)
        userRegisterView.passwordField.addTarget(self, action: #selector(validadePassword), for: .editingChanged)
        userRegisterView.emailField.addTarget(self, action: #selector(validadeEmail), for: .editingChanged)
        userRegisterView.phoneField.addTarget(self, action: #selector(validadePhone), for: .editingChanged)
        userRegisterView.saveButton.addTarget(self, action: #selector(addUser), for: .touchUpInside)
    }
    
    @objc func validateFullName() {
        self.isValidFullName = userRegisterViewModel.isValidFullName(fullName: userRegisterView.fullNameField.text?.trimmingCharacters(in: .whitespaces) ?? "")
        if !isValidFullName {
            notValidTextFieldStyle(textField: userRegisterView.fullNameField)
        } else {
            validTextFieldStyle(textField: userRegisterView.fullNameField)
        }
    }
    
    @objc func validateUsername() {
        self.isValidUsername = userRegisterViewModel.isValidUsername(username: userRegisterView.usernameField.text ?? "")
        if !isValidUsername {
            notValidTextFieldStyle(textField: userRegisterView.usernameField)
        } else {
            validTextFieldStyle(textField: userRegisterView.usernameField)
        }
    }
    
    @objc func validadePassword() {
        self.isValidPassword = userRegisterViewModel.isValidPassword(password: userRegisterView.passwordField.text ?? "")
        if !isValidPassword {
            notValidTextFieldStyle(textField: userRegisterView.passwordField)
        } else {
            validTextFieldStyle(textField: userRegisterView.passwordField)
        }
    }
    
    @objc func validadeEmail() {
        self.isValidEmail = userRegisterViewModel.isValidMail(email: userRegisterView.emailField.text ?? "")
        if !isValidEmail {
            notValidTextFieldStyle(textField: userRegisterView.emailField)
        } else {
            validTextFieldStyle(textField: userRegisterView.emailField)
        }
    }
    
    @objc func validadePhone() {
        self.isValidPhone = userRegisterViewModel.isValidPhoneNumber(phone: userRegisterView.phoneField.text ?? "")
        if !isValidPhone {
            notValidTextFieldStyle(textField: userRegisterView.phoneField)
        } else {
            validTextFieldStyle(textField: userRegisterView.phoneField)
        }
    }
    
    @objc func addUser() {
        if isValidFullName &&
            isValidUsername &&
            isValidPassword &&
            isValidEmail &&
            isValidPhone {
            parseData()
            userRegisterViewModel.addUser()
            print(userRegisterViewModel.userId as Any)
        } else {
            callErrorAlert(title: "Erro", message: "Por favor, preencha os campos corretamente")
        }
        //coordinator?.goToAddressScreen(userId: userRegisterViewModel.userId ?? 0)
    }
}
