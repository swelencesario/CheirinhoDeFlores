//
//  Flower.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation

struct Flower: Codable {
    let flowerId: Int
    let flowerName: String
    let price: Double
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case flowerId = "flowerId"
        case flowerName = "flowerName"
        case price = "price"
        case imageUrl = "imageUrl"
    }
}

