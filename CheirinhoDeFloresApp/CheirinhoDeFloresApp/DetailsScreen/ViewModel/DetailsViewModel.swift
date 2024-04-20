//
//  DetailsViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 15/04/24.
//

import Foundation

class DetailsViewModel {
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
            self.flowerName.value = flower.flowerName
            self.flowerPrice.value = flower.price
            self.flowerUrl.value = flower.imageUrl
        }
    }
}
