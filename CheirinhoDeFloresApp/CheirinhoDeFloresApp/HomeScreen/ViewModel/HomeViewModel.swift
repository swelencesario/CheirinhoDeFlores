//
//  FlowerViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation

class HomeViewModel {
    //var flowers: [Flower]? //= [Flower]()
    //var flowerNames: [String] = []
    var flowers = Observable<[CellViewModel]?>(nil)
    let repository: FlowerRepositoryProtocol
    
    init(repository: FlowerRepositoryProtocol = FlowerRepository()) {
        self.repository = repository
    }
    
    func getFlowers() {
        repository.getFlowers() { flowers in
            guard let flowers = flowers else {
                //tratar o erro
                return
            }
            self.flowers.value = flowers.map { CellViewModel(flower: $0)}
            //self.flowerNames += flowers.map { $0.flowerName }
        }
    }
}
