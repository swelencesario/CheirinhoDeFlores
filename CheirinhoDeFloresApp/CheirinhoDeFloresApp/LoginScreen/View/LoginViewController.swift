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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.registerButton.addTarget(self, action: #selector(goToRegisterScreen), for: .touchUpInside)
    }
    override func loadView() {
        self.view = loginView
    }
    
    @objc func goToRegisterScreen() {
        coordinator?.goToRegisterScreen()
    }
}

