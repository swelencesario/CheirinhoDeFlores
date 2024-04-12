//
//  ImageView+Extension.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 10/04/24.
//

import Foundation
import UIKit

extension UIImageView {
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
    
    func loadImageFromURL(urlString: String) {
                guard let url = URL(string: urlString) else {
                    print("Invalid URL")
                    return
                }
                
                let session = URLSession.shared
                let task = session.dataTask(with: url) { (data, response, error) in
                    // Verificar se ocorreu algum erro durante a requisição
                    if let error = error {
                        print("Erro: \(error)")
                        return
                    }
                    
                    // Verificar se os dados foram recebidos com sucesso
                    guard let data = data else {
                        print("Dados vazios")
                        return
                    }
                    
                    // Converter os dados em uma imagem
                    if let image = UIImage(data: data) {
                        // Atualizar a interface do usuário com a imagem recebida
                        DispatchQueue.main.async {
                            self.image = image
                        }
                    }
                }
                
                task.resume()
            }
}
