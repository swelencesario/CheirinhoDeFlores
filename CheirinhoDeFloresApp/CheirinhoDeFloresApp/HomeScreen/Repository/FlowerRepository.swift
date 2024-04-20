//
//  FlowerRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Alamofire

protocol FlowerRepositoryProtocol: AnyObject {
    func getFlowers(completion: @escaping ([Flower]?) -> ())
}

class FlowerRepository: FlowerRepositoryProtocol {
    func getFlowers(completion: @escaping ([Flower]?) -> ()) {
        let endpoint: String = "http://localhost:5240/api/flowers/"
        
        AF.request(endpoint, method: .get, parameters: nil, encoding: JSONEncoding.default).responseData { (response) in
            switch response.result {
                
            case .success(_):
                guard let data = response.data else { return }
                do {
                    let result = try JSONDecoder().decode ([Flower].self, from: data)
                    completion(result)
                } catch {
                    completion([])
                }
            case .failure(_):
                completion([])
            }
        }
    }
}
