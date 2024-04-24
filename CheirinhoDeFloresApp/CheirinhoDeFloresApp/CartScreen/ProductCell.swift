//
//  ProductCell.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 24/04/24.
//

import UIKit

class ProductCell: UITableViewCell {
    static let identifier = "productCellIdentifier"
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 4.0
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var productImage: UIImageView = {
        let img = UIImageView(image: UIImage(named: "crisantemo"))
        img.layer.cornerRadius = 12
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    
    lazy var productNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Girassóis"
        label.font = UIFont(name: "Hiragino Sans W7", size: 14.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 55,00"
        label.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var quantityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hiragino Sans W5", size: 14.0)
        label.text = "1"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.value = 1
        stepper.backgroundColor = .clear
        stepper.translatesAutoresizingMaskIntoConstraints = false
        
        return stepper
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [quantityLabel, stepper])
        stack.axis = .horizontal
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.layer.cornerRadius = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //backgroundColor = .blue
        //contentView.backgroundColor = .gray
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(containerView)
        containerView.addSubview(productImage)
        containerView.addSubview(productNameLabel)
        containerView.addSubview(priceLabel)
        containerView.addSubview(stack)
    }
    
    func setupConstraints() {
        containerViewConstraints()
        productImageConstraints()
        productNameLabelConstraints()
        priceLabelConstraints()
        quantityLabelConstraints()
        stackConstraints()
    }
    
    func containerViewConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8.0),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8.0),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8.0),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8.0)
        ])
    }
    
    func productImageConstraints() {
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8.0),
            productImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8.0),
            productImage.widthAnchor.constraint(equalToConstant: 72.0),
            productImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8.0)
        ])
    }
    
    func productNameLabelConstraints() {
        NSLayoutConstraint.activate([
            productNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 16.0),
            productNameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16.0)
        ])
    }
    
    func priceLabelConstraints() {
        NSLayoutConstraint.activate([
            priceLabel.leadingAnchor.constraint(equalTo: productNameLabel.trailingAnchor, constant: 8.0),
            priceLabel.topAnchor.constraint(greaterThanOrEqualTo: productNameLabel.topAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8.0)
        ])
    }
    
    func quantityLabelConstraints() {
        NSLayoutConstraint.activate([
            quantityLabel.widthAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func stackConstraints() {
        NSLayoutConstraint.activate([
            //stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0),
            stack.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 16.0),
            stack.topAnchor.constraint(greaterThanOrEqualTo: productNameLabel.bottomAnchor, constant: 8.0),
            stack.bottomAnchor.constraint(equalTo: productImage.bottomAnchor)
        ])
    }
}
