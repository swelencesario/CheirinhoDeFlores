//
//  AddressRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation
import Alamofire

protocol AddressRepositoryProtocol {
    func addAddress(userID: Int, zipCode: String, street: String, number: Int, complement: String, neighborhood: String, city: String, state: String, completion: @escaping (Int?) -> ())
}

class AddressRepository: AddressRepositoryProtocol {
    func addAddress(userID: Int, zipCode: String, street: String, number: Int, complement: String, neighborhood: String, city: String, state: String, completion: @escaping (Int?) -> ()) {
        
        let evaluationItems: Parameters = ["userID": userID, "zipCode": zipCode, "street": street, "number": number, "complement": complement, "neighborhood": neighborhood, "city": city, "state": state]
        
        AF.request("http://localhost:5240/api/addresses", method: .post, parameters: evaluationItems, encoding: JSONEncoding.default).validate()
            .responseData { (response) in
                switch response.result {
                case .success(let result):
                    do {
                        let decodedResult = try JSONDecoder().decode (Int.self, from: result)
                        completion(decodedResult)
                        print(decodedResult)
                    } catch {
                        completion(nil)
                    }
                    
                case .failure(_):
                    completion(nil)
                }
            }
    }
}
