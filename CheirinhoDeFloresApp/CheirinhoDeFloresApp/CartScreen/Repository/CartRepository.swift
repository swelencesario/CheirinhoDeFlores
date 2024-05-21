//
//  CartRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 03/05/24.
//

import Alamofire

protocol CartRepositoryProtocol: AnyObject {
    func getCartProducts(userId: Int, completion: @escaping ([Cart]?) -> ())
}

class CartRepository: CartRepositoryProtocol {
    func getCartProducts(userId: Int, completion: @escaping ([Cart]?) -> ()) {
        let endpoint: String = "http://localhost:5240/api/cart/" + String(userId)
        
        AF.request(endpoint, method: .get, parameters: nil, encoding: JSONEncoding.default).responseData { (response) in
            switch response.result {
                
            case .success(_):
                guard let data = response.data else { return }
                do {
                    // Log the response data as a string to debug any potential issues with the JSON format.
                    if let jsonString = String(data: data, encoding: .utf8) {
                        print("JSON Response: \(jsonString)")
                    }
                    let result = try JSONDecoder().decode ([Cart].self, from: data)
                    completion(result)
                } catch {
                    // Log the error to understand why the decoding failed.
                    print("Decoding error: \(error)")
                    completion([])
                }
            case .failure(_):
                
                completion([])
            }
        }
    }
    
}
