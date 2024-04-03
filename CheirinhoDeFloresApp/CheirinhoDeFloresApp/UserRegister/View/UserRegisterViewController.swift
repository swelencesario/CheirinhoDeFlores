//
//  UserViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 14/03/24.
//

import UIKit

class UserRegisterViewController: UIViewController {
    var coordinator: MainCoordinator?
    let userRegisterView = UserRegisterView()
    var userRegisterViewModel = UserRegisterViewModel()
    var isValidFullName: Bool = false
    var isValidUsername: Bool = false
    var isValidPassword: Bool = false
    var isValidEmail: Bool = false
    var isValidPhone: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = userRegisterView
    }
    
//        func parseData() {
//            userRegisterViewModel.fullName = fullNameOutlet.text?.capitalized
//            userRegisterViewModel.username = usernameOutlet.text?.lowercased().trimmingCharacters(in: .whitespaces)
//            userRegisterViewModel.email = emailOutlet.text?.lowercased()
//            userRegisterViewModel.password = passwordOutlet.text
//            userRegisterViewModel.phoneNumber = phoneOutlet.text
//        }
//        
//        func validateFullName() {
//            self.isValidFullName = userRegisterViewModel.isValidFullName(fullName: fullNameOutlet.text?.trimmingCharacters(in: .whitespaces) ?? "")
//            if !isValidFullName {
//                notValidTextFieldStyle(textField: fullNameOutlet)
//            } else {
//                validTextFieldStyle(textField: fullNameOutlet)
//            }
//        }
//        
//        func validateUsername() {
//            self.isValidUsername = userRegisterViewModel.isValidUsername(username: usernameOutlet.text ?? "")
//            if !isValidUsername {
//                notValidTextFieldStyle(textField: usernameOutlet)
//            } else {
//                validTextFieldStyle(textField: usernameOutlet)
//            }
//        }
//        
//        func validadePassword() {
//            self.isValidPassword = userRegisterViewModel.isValidPassword(password: passwordOutlet.text ?? "")
//            if !isValidPassword {
//                notValidTextFieldStyle(textField: passwordOutlet)
//            } else {
//                validTextFieldStyle(textField: passwordOutlet)
//            }
//        }
//        
//        func validadeEmail() {
//            self.isValidEmail = userRegisterViewModel.isValidMail(email: emailOutlet.text ?? "")
//            if !isValidEmail {
//                notValidTextFieldStyle(textField: emailOutlet)
//            } else {
//                validTextFieldStyle(textField: emailOutlet)
//            }
//        }
//        
//        func validadePhone() {
//            self.isValidPhone = userRegisterViewModel.isValidPhoneNumber(phone: phoneOutlet.text ?? "")
//            if !isValidPhone {
//                notValidTextFieldStyle(textField: phoneOutlet)
//            } else {
//                validTextFieldStyle(textField: phoneOutlet)
//            }
//        }
//        
//        func validateTextFields() {
//            if isValidFullName &&
//                isValidUsername &&
//                isValidPassword &&
//                isValidEmail &&
//                isValidPhone {
//                parseData()
//                userRegisterViewModel.addUser()
//                performSegue(withIdentifier: "goToAddressSegue", sender: nil)
//                print(userRegisterViewModel.userId as Any)
//            } else {
//                callErrorAlert(title: "Erro", message: "Por favor, preencha os campos corretamente")
//            }
//        }
    }
