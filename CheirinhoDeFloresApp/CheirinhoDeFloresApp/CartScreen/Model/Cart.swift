//
//  Cart.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 07/05/24.
//

import Foundation

struct Cart: Codable {
    let userId: Int?
    let productId: Int?
    let totalPrice: Double?
    let quantity: Int?
}
