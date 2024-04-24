//
//  CartViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import UIKit

class CartViewController: UINavigationController {
    let cartView = CartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Carrinho"
        cartView.productList.dataSource = self
        cartView.productList.delegate = self
    }
    
    override func loadView() {
        self.view = cartView
    }
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCell.identifier, for: indexPath) as? ProductCell
        //cell?.setup(searchResults[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104.0
    }
}
