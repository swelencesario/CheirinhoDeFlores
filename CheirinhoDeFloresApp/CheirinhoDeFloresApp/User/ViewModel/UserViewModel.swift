//
//  UserViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

class UserViewModel {
    var userId: Int?
    var fullName: String? = nil
    var username: String? = nil
    var password: String? = nil
    var email: String? = nil
    var phoneNumber: String? = nil
    var errorTitle: String? = nil
    var errorMessage: String? = nil
    
    var userRepository: UserRepositoryProtocol
    
    init(userRepository: UserRepositoryProtocol = UserRepository()) {
        self.userRepository = userRepository
    }
    
    func isValidFullName(fullName: String) -> Bool {
        let validName = "^[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$"
        return NSPredicate(format: "Self Matches %@", validName).evaluate(with: fullName)
    }
    
    func isValidUsername(username: String) -> Bool {
        return NSPredicate(format: "Self Matches %@", "^[a-z0-9]+$").evaluate(with: username)
    }
    
    func isValidMail(email: String) -> Bool {
        let validEmail = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        return NSPredicate(format: "Self Matches %@", validEmail).evaluate(with: email)
    }
    
    func isValidPassword(password: String) -> Bool {
        return NSPredicate(format: "Self Matches %@", "^[a-z0-9]{6,12}$").evaluate(with: password)
    }
    
    func isValidPhoneNumber(phone: String) -> Bool {
        return NSPredicate(format: "Self Matches %@", "[0-9]+$").evaluate(with: phone)
    }
    
    func addUser() {
        userRepository.addUser(fullName: fullName ?? "", username: username ?? "", email: email ?? "", password: password ?? "", phoneNumber: phoneNumber ?? "") { userId in
            guard let userId = userId else {
                self.errorTitle = "Desculpe, algo inesperado aconteceu"
                self.errorMessage = "Tente novamente em alguns instantes"
                print(userId as Any)
                return
            }
            self.userId = userId
            print(userId)
        }
    }
}
