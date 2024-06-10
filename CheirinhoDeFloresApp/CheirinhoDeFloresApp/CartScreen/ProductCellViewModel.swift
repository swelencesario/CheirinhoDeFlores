//
//  ProductCellViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/05/24.
//

import Foundation

class ProductCellViewModel {
    var productName: String
    var imageUrl: String
    var quantity: Int
    var totalPrice: Double
    var unitPrice: Double
    
    init(product: Cart) {
        self.productName = product.productName
        self.imageUrl = product.imageUrl
        self.quantity = product.quantity
        self.totalPrice = product.totalPrice
        self.unitPrice = product.unitPrice
    }
}
