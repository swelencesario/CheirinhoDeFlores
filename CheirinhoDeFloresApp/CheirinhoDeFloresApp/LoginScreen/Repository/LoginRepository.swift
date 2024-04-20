//
//  LoginRepository.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 08/04/24.
//

import Alamofire
 
protocol LoginRepositoryProtocol: AnyObject {
    func login(username: String, password: String, completion: @escaping (User?) -> ())
}

class LoginRepository: LoginRepositoryProtocol {
    func login(username: String, password: String, completion: @escaping (User?) -> ()) {
        let endpoint: String = "http://localhost:5240/api/users/" + username + "/" + password
        
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
}
