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
    let loginViewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.loginViewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginView.registerButton.addTarget(self, action: #selector(goToRegisterScreen), for: .touchUpInside)
    }
    override func loadView() {
        self.view = loginView
    }
    
    @objc func goToRegisterScreen() {
        //coordinator?.goToHomeScreen()
        coordinator?.goToRegisterScreen()
        //coordinator?.goToDetailsView()
        //coordinator?.goToDetailsView()
    }
    
    @objc func login() {
        guard let username = loginView.usernameField.text, let password = loginView.passwordField.text else {
            callErrorAlert(title: "Atenção", message: "Por favor, preencha os campos corretamente")
            return
        }
        loginViewModel.login(username: username, password: password)
    }
}

