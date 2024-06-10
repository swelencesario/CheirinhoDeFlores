//
//  Cart.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 07/05/24.
//

import Foundation

struct Cart: Codable {
    let userId: Int
    let productId: Int
    let productName: String
    let imageUrl: String
    let totalPrice: Double
    let quantity: Int
    let unitPrice: Double
    
    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case productId = "productId"
        case productName = "productName"
        case imageUrl = "url"
        case totalPrice = "totalPrice"
        case quantity = "quantity"
        case unitPrice = "unitPrice"
    }
}
