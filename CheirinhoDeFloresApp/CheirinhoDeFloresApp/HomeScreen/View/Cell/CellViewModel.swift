//
//  CellViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/04/24.
//

import Foundation

class CellViewModel {
    var flowerId: Int
    var flowerName: String
    var flowerUrl: String
    
    init(flower: Flower) {
        self.flowerId = flower.flowerId
        self.flowerName = flower.flowerName
        self.flowerUrl = flower.imageUrl
    }
}
