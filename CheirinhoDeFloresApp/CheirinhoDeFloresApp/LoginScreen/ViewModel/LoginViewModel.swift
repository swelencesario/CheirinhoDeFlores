//
//  LoginViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

class LoginViewModel {
    let repository: LoginRepositoryProtocol
    var coordinator: MainCoordinator
    
    init(repository: LoginRepositoryProtocol = LoginRepository(), coordinator: MainCoordinator) {
        self.repository = repository
        self.coordinator = coordinator
    }
    
    func login(username: String, password: String) {
        repository.login(username: username, password: password) { success in
            guard let success = success else {
                self.coordinator.callAlert(title: "Usuário ou senha incorretos", message: "")
                return
            }
            self.coordinator.goToHomeScreen(userId: success)
            print(success)
            print("User ID View Model: \(String(describing: success))")
        }
    }
}
