//
//  ImageView+Extension.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation
import UIKit

extension UIImageView {
    
    func loadImageFromURL(urlString: String) {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Erro: \(error)")
                return
            }
            
            guard let data = data else {
                print("Dados vazios")
                return
            }
            
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }
        task.resume()
    }
    
    func loadFrom(URLAddress: String) {
           guard let url = URL(string: URLAddress) else {
               return
           }
           DispatchQueue.main.async { [weak self] in
               if let imageData = try? Data(contentsOf: url) {
                   if let loadedImage = UIImage(data: imageData) {
                       self?.image = loadedImage
                   }
               }
           }
       }
}
