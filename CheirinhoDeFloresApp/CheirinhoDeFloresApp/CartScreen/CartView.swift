//
//  CartView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import UIKit

class CartView: UIView {

    lazy var productList: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.register(ProductCell.self, forCellReuseIdentifier: ProductCell.identifier)
        
        return table
    }()
    
    lazy var totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total: R$400,00"
        label.font = UIFont(name: "Hiragino Sans W7", size: 14.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Avançar", for: .normal)
        button.backgroundColor = UIColor(named: "greatPinkColor")
        button.tintColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 4.0
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        addSubview(productList)
        addSubview(totalLabel)
        addSubview(nextButton)
    }
    
    func setupConstraints() {
        productListConstraints()
        totalLabelConstraints()
        nextButtonConstraints()
    }
    
    func productListConstraints() {
        NSLayoutConstraint.activate([
            productList.heightAnchor.constraint(equalToConstant: 416.0),
            productList.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24.0),
            productList.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            productList.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func totalLabelConstraints() {
        NSLayoutConstraint.activate([
            totalLabel.topAnchor.constraint(equalTo: productList.bottomAnchor, constant: 24.0),
            totalLabel.leadingAnchor.constraint(equalTo: productList.leadingAnchor, constant: 8.0)
        ])
    }
    
    func nextButtonConstraints() {
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -80.0),
            nextButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            nextButton.heightAnchor.constraint(equalToConstant: 48.0),
            nextButton.topAnchor.constraint(greaterThanOrEqualTo: totalLabel.bottomAnchor, constant: -8.0)
        ])
    }
}
