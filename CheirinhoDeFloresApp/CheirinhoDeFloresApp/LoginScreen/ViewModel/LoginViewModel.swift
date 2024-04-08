//
//  LoginViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

class LoginViewModel {
    let repository: LoginRepositoryProtocol
    
    init(repository: LoginRepositoryProtocol = LoginRepository()) {
        self.repository = repository
    }
    
    func login(username: String, password: String) {
        repository.login(username: username, password: password) { success in
            guard let success = success else {
                print("erro no login")
                return
            }
            print("sucesso no login")
        }
    }
}
