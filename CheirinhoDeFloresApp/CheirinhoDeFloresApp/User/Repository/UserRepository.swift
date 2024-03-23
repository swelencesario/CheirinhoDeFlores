//
//  UserRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/03/24.
//

import Foundation
import Alamofire

protocol UserRepositoryProtocol {
    func addUser(fullName: String, username: String, email: String, password: String, phoneNumber: String, completion: @escaping (Int?) -> ())
    func findUserById(userId: Int, completion: @escaping (User?) -> ())
}

class UserRepository : UserRepositoryProtocol{
    func findUserById(userId: Int, completion: @escaping (User?) -> ()) {
        
        let endpoint: String = "http://localhost:5240/api/users/" + String(userId)
        
        AF.request(endpoint, method: .get, parameters: nil, encoding: JSONEncoding.default).responseData { (response) in
            switch response.result {
                
            case .success(_):
                guard let data = response.data else { return }
                do {
                    let result = try JSONDecoder().decode (User.self, from: data)
                    completion(result)
                } catch {
                    completion(nil)
                }
            case .failure(_):
                completion(nil)
            }
        }
    }
    
    func addUser(fullName: String, username: String, email: String, password: String, phoneNumber: String, completion: @escaping (Int?) -> ()) {
        
        let evaluationItems: Parameters = ["fullName": fullName, "username": username, "email": email, "password": password, "phoneNumber": phoneNumber]
        
        AF.request("http://localhost:5240/api/users", method: .post, parameters: evaluationItems, encoding: JSONEncoding.default).validate()
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
