//
//  DetailsRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 15/04/24.
//

import Alamofire

protocol DetailsRepositoryProtocol: AnyObject {
    func findFlowerById(flowerId: Int, completion: @escaping (Flower?) -> ())
    func addToCart(userId: Int, productId: Int, quantity: Int, totalPrice: Double, completion: @escaping (Bool) -> ())
}

class DetailsRepository: DetailsRepositoryProtocol {
    func addToCart(userId: Int, productId: Int, quantity: Int, totalPrice: Double, completion: @escaping (Bool) -> ()) {
        
        let evaluationItems: Parameters = ["userId": userId, "productId": productId, "quantity": quantity, "totalPrice": totalPrice]
        
        AF.request("http://localhost:5240/api/cart", method: .post, parameters: evaluationItems, encoding: JSONEncoding.default).validate()
            .responseData { (response) in
                switch response.result {
                    
                case .success:
                    completion(true)
                    
                case .failure:
                    completion(false)
                }
            }
    }
    
    func findFlowerById(flowerId: Int, completion: @escaping (Flower?) -> ()) {
        let endpoint: String = "http://localhost:5240/api/flowers/" + String(flowerId)
        
        AF.request(endpoint, method: .get, parameters: nil, encoding: JSONEncoding.default).responseData { (response) in
            switch response.result {
                
            case .success(_):
                guard let data = response.data else { return }
                do {
                    let result = try JSONDecoder().decode (Flower.self, from: data)
                    completion(result)
                } catch {
                    completion(nil)
                }
            case .failure(_):
                completion(nil)
            }
        }
    }
}
