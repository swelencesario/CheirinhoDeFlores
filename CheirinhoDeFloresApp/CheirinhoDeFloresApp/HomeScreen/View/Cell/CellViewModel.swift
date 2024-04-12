//
//  CellViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/04/24.
//

import Foundation

class CellViewModel {
    var flowerName: String
    var flowerUrl: String
    
    init(flower: Flower) {
        self.flowerName = flower.flowerName
        self.flowerUrl = flower.imageUrl
    }
}
