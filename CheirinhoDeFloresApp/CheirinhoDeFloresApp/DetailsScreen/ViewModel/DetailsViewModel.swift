//
//  DetailsViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 15/04/24.
//

import Foundation

class DetailsViewModel {
    var flowerId = Observable<Int?>(nil)
    var flowerName = Observable<String?>(nil)
    var flowerPrice = Observable<Double?>(nil)
    var flowerUrl = Observable<String?>(nil)
    var coordinator: MainCoordinator
    var repository: DetailsRepositoryProtocol
    
    init(coordinator: MainCoordinator, repository: DetailsRepositoryProtocol = DetailsRepository()) {
        self.coordinator = coordinator
        self.repository = repository
    }
    
    func getFlowerById(flowerId: Int) {
        repository.findFlowerById(flowerId: flowerId) { flower in
            guard let flower = flower else {
                //erro
                return
            }
            //sucesso
            self.flowerId.value = flower.flowerId
            self.flowerName.value = flower.flowerName
            self.flowerPrice.value = flower.price
            self.flowerUrl.value = flower.imageUrl
        }
    }
    
    func addToCart(userId: Int, flowerId: Int, quantity: Int, totalPrice: Double) {
        repository.addToCart(userId: userId, productId: flowerId, quantity: quantity, totalPrice: totalPrice) { result in
            switch result {
                
            case true:
                print("sucesso ao adicionar ao carrinho")
                self.coordinator.callAlert(title: "Adicionado ao carrinho com sucesso", message: "")
            case false:
                print("não foi adicionado ao carrinho")
                self.coordinator.callAlert(title: "Desculpe, algo inesperado aconteceu", message: "")
            }
        }
    }
    
    func calculateTotalPrice(unitPrice: Double, quantity: Double) -> Double {
        let totalPrice = quantity * unitPrice
        
        return totalPrice
    }
}
