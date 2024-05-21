//
//  CartViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import Foundation

class CartViewModel {
    var products = Observable<[ProductCellViewModel]?>(nil)
    
    let repository: CartRepositoryProtocol
    
    init(repository: CartRepositoryProtocol = CartRepository()) {
        self.repository = repository
    }
    
    func getCartProducts(userId: Int) {
        repository.getCartProducts(userId: userId) { response in
            guard let response = response else {
                // tratar o erro
                return
            }
            self.products.value = response.map {
                ProductCellViewModel(product: $0)
            }
        
        }
    }
}
