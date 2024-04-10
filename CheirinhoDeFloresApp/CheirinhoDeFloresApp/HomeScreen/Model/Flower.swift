//
//  Flower.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation

struct Flower: Codable {
    let flowerName: String?
    
    enum CodingKeys: String, CodingKey {
        case flowerName = "flowerName"
    }
}
