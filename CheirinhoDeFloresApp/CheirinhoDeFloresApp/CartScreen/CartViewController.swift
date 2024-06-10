//
//  CartViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import UIKit

class CartViewController: UIViewController {
    var userId: Int
    let cartView = CartView()
    var cartViewModel: CartViewModel
    var products = [ProductCellViewModel]()
    
    init(userId: Int, cartViewModel: CartViewModel) {
        self.userId = userId
        self.cartViewModel = cartViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Carrinho"
        
        cartView.productList.dataSource = self
        cartView.productList.delegate = self
        bindProducts()
        
        
        cartViewModel.getCartProducts(userId: userId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //cartView.totalLabel =
        
        
    }
    
    override func loadView() {
        self.view = cartView
    }
    
    func handleTotalPrice() -> String {
        var totalPrice: Double = 0.0
        
        for flower in products {
            var totalUnitPrice = flower.unitPrice * Double(flower.quantity)
            totalPrice = totalPrice + totalUnitPrice
        }
        
        return "Preço Total: R$ \(totalPrice)"
    }
    
    func bindProducts() {
        cartViewModel.products.bind { [weak self] cartList in
            guard let cartList = cartList else { return }
            self?.products = cartList
            self?.cartView.productList.reloadData()
        }
    }
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCell.identifier, for: indexPath) as? ProductCell
        
        cell?.setupCell(products: products[indexPath.row])
        cell?.productImage.loadImageFromURL(urlString: products[indexPath.row].imageUrl)
        cartView.totalLabel.text =  handleTotalPrice() // a func ta certa, mas tem que ser chamada em outro lugar.
        return cell ?? UITableViewCell()
    }
}

extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104.0
    }
}
