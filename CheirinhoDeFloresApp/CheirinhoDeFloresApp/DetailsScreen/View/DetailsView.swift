//
//  DetailsView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/04/24.
//

import UIKit

class DetailsView: UIView {
    
    lazy var flowerImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "rosa"))
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8.0
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Hiragino Sans W7", size: 14.0)
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
        stepper.translatesAutoresizingMaskIntoConstraints = false
        
        return stepper
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [quantityLabel, stepper])
        stack.axis = .horizontal
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.layer.cornerRadius = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var cartButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Adicionar ao carrinho", for: .normal)
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
        addSubview(flowerImage)
        addSubview(descriptionLabel)
        addSubview(priceLabel)
        addSubview(cartButton)
        addSubview(stack)
    }
    
    func setupConstraints() {
        flowerImageConstraints()
        descriptionLabelConstraints()
        priceLabelConstraints()
        cartButtonConstraints()
        quantityLabelConstraints()
        stackConstraints()
    }
    
    func flowerImageConstraints() {
        NSLayoutConstraint.activate([
            flowerImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            flowerImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            flowerImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            flowerImage.heightAnchor.constraint(equalToConstant: 400.0)
        ])
    }
    
    func descriptionLabelConstraints() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: flowerImage.bottomAnchor, constant: 24.0),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func priceLabelConstraints() {
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 24.0),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func quantityLabelConstraints() {
        NSLayoutConstraint.activate([
            quantityLabel.widthAnchor.constraint(equalToConstant: 96.0)
        ])
    }
    
    func stackConstraints() {
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 24.0),
            stack.centerXAnchor.constraint(equalTo: priceLabel.centerXAnchor)
        ])
    }
    
    func cartButtonConstraints() {
        NSLayoutConstraint.activate([
            cartButton.topAnchor.constraint(greaterThanOrEqualTo: stack.bottomAnchor, constant: 24.0),
            cartButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            cartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            cartButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32.0),
            cartButton.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
}
