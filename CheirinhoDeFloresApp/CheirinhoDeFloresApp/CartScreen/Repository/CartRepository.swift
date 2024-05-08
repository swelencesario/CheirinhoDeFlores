//
//  CartRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 03/05/24.
//

import Alamofire

protocol CartRepositoryProtocol: AnyObject {
    func getCartProducts(userId: Int, completion: @escaping ([Cart]) -> ())
}

class CartRepository: CartRepositoryProtocol {
    func getCartProducts(userId: Int, completion: @escaping ([Cart]) -> ()) {
        let endpoint: String = "http://localhost:5240/api/cart/" + String(userId)
        
        AF.request(endpoint, method: .get, parameters: nil, encoding: JSONEncoding.default).responseData { (response) in
            switch response.result {
                
            case .success(_):
                guard let data = response.data else { return }
                do {
                    let result = try JSONDecoder().decode (Cart.self, from: data)
                    completion([result])
                } catch {
                    completion([])
                }
            case .failure(_):
                completion([])
            }
        }
    }
    
}
