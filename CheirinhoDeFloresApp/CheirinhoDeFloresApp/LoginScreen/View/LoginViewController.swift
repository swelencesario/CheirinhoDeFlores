//
//  ViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/03/24.
//

import UIKit

class LoginViewController: UIViewController {
    var coordinator: MainCoordinator?
    let loginView = LoginView()
    let loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginView.registerButton.addTarget(self, action: #selector(goToRegisterScreen), for: .touchUpInside)
    }
    override func loadView() {
        self.view = loginView
    }
    
    @objc func goToRegisterScreen() {
        coordinator?.goToRegisterScreen()
    }
    
    @objc func login() {
        guard let username = loginView.usernameField.text else {
            //se o campo tiver vazio, o que fazer?
            return
        }
        
        guard let password = loginView.passwordField.text else {
            //se o campo tiver vazio, o que fazer?
            return
        }
        loginViewModel.login(username: username, password: password)
    }
}

