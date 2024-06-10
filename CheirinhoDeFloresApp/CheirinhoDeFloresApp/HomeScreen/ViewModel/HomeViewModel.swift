//
//  FlowerViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation

class HomeViewModel {
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
        }
    }
}
