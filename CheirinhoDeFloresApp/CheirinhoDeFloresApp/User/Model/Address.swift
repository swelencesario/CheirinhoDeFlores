//
//  Address.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation

struct Address: Codable {
    let zipCode: String?
    let street: String?
    let number: Int?
    let complement: String?
    let neighborhood: String?
    let city: String?
    let state: String?
}
