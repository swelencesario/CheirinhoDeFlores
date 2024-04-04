//
//  AddressViewModel.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 25/03/24.
//

import Foundation

class AddressViewModel {
    //var userId: Int? = nil // preciso trazer o id da user view controller
    var zipCode: String? = nil
    var street: String? = nil
    var number: Int? = nil
    var complement: String? = nil
    var neighborhood: String? = nil
    var city: String? = nil
    var state: String? = nil
    var addressRepository: AddressRepositoryProtocol
    
    init(addressRepository: AddressRepositoryProtocol = AddressRepository()) {
        self.addressRepository = addressRepository
    }
    
    func addAddress(id: Int) {
        addressRepository.addAddress(userID: id, zipCode: zipCode ?? "", street: street ?? "", number: number ?? 0, complement: complement ?? "", neighborhood: neighborhood ?? "", city: city ?? "", state: state ?? "") { result in
            guard let result = result else {
                //tratar o erro
                print("erro no endereço")
                //print(self.userId as Any)
                return
            }
            //print(self.userId as Any)
            print("sucesso no endereço")
            //no sucesso, exibir uma mensagem de sucesso
        }
    }
}
