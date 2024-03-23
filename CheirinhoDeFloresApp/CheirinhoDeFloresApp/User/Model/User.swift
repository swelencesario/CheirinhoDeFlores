//
//  CreateAccount.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

struct User: Codable {
    let userId: Int?
    let fullName: String?
    let userName: String?
    let email: String?
    let password: String?
    let phoneNumber: String?
    let addresses: [Address]?
    
    enum CodingKeys: String, CodingKey {
        case userId = "Id"
        case fullName = "fullName"
        case userName = "username"
        case email = "email"
        case password = "password"
        case phoneNumber = "phoneNumber"
        case addresses = "addresses"
    }
}
