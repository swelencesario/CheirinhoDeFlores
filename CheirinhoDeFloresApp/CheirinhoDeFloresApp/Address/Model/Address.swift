//
//  Address.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

struct Address: Codable {
    let userId: Int?
    let zipCode: String?
    let street: String?
    let number: Int?
    let complement: String?
    let neighborhood: String?
    let city: String?
    let state: String?
    
    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case zipCode = "zipCode"
        case street = "street"
        case number = "number"
        case complement = "complement"
        case neighborhood = "neighborhood"
        case city = "city"
        case state = "state"
    }
}
