//
//  AccountView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import UIKit

class AccountView: UIView {
    
    lazy var greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Olá Adrian"
        label.font = UIFont(name: "Hiragino Sans W7", size: 18.0)
        label.textColor = UIColor(named: "greatPinkColor")
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var profileIcon: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        image.tintColor = UIColor(named: "greatPinkColor")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    lazy var myPurchasesStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [myPurchasesIcon, myPurchasesLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 8.0
        stack.spacing = 8.0
        stack.alignment = .center
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var myPurchasesIcon: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "cart.circle.fill"))
        image.tintColor = UIColor(named: "greatPinkColor")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    lazy var myPurchasesLabel: UILabel = {
        let label = UILabel()
        label.text = "Minhas compras"
        label.font = UIFont(name: "Hiragino Sans W3", size: 16.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var myFavoritesStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [myFavoritesIcon, myFavoritesLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 8.0
        stack.spacing = 8.0
        stack.alignment = .center
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var myFavoritesIcon: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "heart.circle.fill"))
        image.contentMode = .scaleAspectFit
        image.tintColor = UIColor(named: "greatPinkColor")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    lazy var myFavoritesLabel: UILabel = {
        let label = UILabel()
        label.text = "Meus favoritos"
        label.font = UIFont(name: "Hiragino Sans W3", size: 16.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var myAddressesStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [myAddressesIcon, myAddressesLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 8.0
        stack.spacing = 8.0
        stack.alignment = .center
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var myAddressesIcon: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "envelope.circle.fill"))
        image.contentMode = .scaleAspectFit
        image.tintColor = UIColor(named: "greatPinkColor")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    lazy var myAddressesLabel: UILabel = {
        let label = UILabel()
        label.text = "Meus endereços"
        label.font = UIFont(name: "Hiragino Sans W3", size: 16.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var myCardsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [myCardsIcon, myCardsLabel])
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 8.0
        stack.spacing = 8.0
        stack.alignment = .center
        stack.layer.borderColor = UIColor(named: "greyColor")?.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var myCardsIcon: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "creditcard.circle.fill"))
        image.contentMode = .scaleAspectFit
        image.tintColor = UIColor(named: "greatPinkColor")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    lazy var myCardsLabel: UILabel = {
        let label = UILabel()
        label.text = "Meus cartões"
        label.font = UIFont(name: "Hiragino Sans W3", size: 16.0)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
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
        addSubview(greetingLabel)
        addSubview(profileIcon)
        addSubview(myPurchasesStack)
        addSubview(myFavoritesStack)
        addSubview(myAddressesStack)
        addSubview(myCardsStack)
    }
    
    func setupConstraints() {
        greetingLabelConstraints()
        profileIconConstraints()
        myPurchasesStackConstraints()
        myFavoritesStackConstraints()
        myAddressesStackConstraints()
        myCardsStackConstraints()
    }
    
    func greetingLabelConstraints() {
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 112.0),
            greetingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0)
        ])
    }
    
    func profileIconConstraints() {
        NSLayoutConstraint.activate([
            profileIcon.centerYAnchor.constraint(equalTo: greetingLabel.centerYAnchor),
            profileIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            profileIcon.leadingAnchor.constraint(greaterThanOrEqualTo: greetingLabel.trailingAnchor),
            profileIcon.heightAnchor.constraint(equalToConstant: 48.0),
            profileIcon.widthAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func myPurchasesStackConstraints() {
        NSLayoutConstraint.activate([
            myPurchasesStack.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 32.0),
            myPurchasesStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            myPurchasesStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            myPurchasesStack.heightAnchor.constraint(equalToConstant: 104.0),
            
            myPurchasesIcon.heightAnchor.constraint(equalToConstant: 48.0),
            myPurchasesIcon.widthAnchor.constraint(equalToConstant: 48.0),
            myPurchasesIcon.leadingAnchor.constraint(equalTo: myPurchasesStack.leadingAnchor, constant: 16.0)
        ])
    }
    
    func myFavoritesStackConstraints() {
        NSLayoutConstraint.activate([
            myFavoritesStack.topAnchor.constraint(equalTo: myPurchasesStack.bottomAnchor, constant: 24.0),
            myFavoritesStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            myFavoritesStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            myFavoritesStack.heightAnchor.constraint(equalToConstant: 104.0),
            
            myFavoritesIcon.heightAnchor.constraint(equalToConstant: 48.0),
            myFavoritesIcon.widthAnchor.constraint(equalToConstant: 48.0),
            myFavoritesIcon.leadingAnchor.constraint(equalTo: myFavoritesStack.leadingAnchor, constant: 16.0)
        ])
    }
    
    func myAddressesStackConstraints() {
        NSLayoutConstraint.activate([
            myAddressesStack.topAnchor.constraint(equalTo: myFavoritesStack.bottomAnchor, constant: 24.0),
            myAddressesStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            myAddressesStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            myAddressesStack.heightAnchor.constraint(equalToConstant: 104.0),
            
            myAddressesIcon.heightAnchor.constraint(equalToConstant: 48.0),
            myAddressesIcon.widthAnchor.constraint(equalToConstant: 48.0),
            myAddressesIcon.leadingAnchor.constraint(equalTo: myAddressesStack.leadingAnchor, constant: 16.0)
        ])
    }
    
    func myCardsStackConstraints() {
        NSLayoutConstraint.activate([
            myCardsStack.topAnchor.constraint(equalTo: myAddressesStack.bottomAnchor, constant: 24.0),
            myCardsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            myCardsStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            myCardsStack.heightAnchor.constraint(equalToConstant: 104.0),
            
            myCardsIcon.heightAnchor.constraint(equalToConstant: 48.0),
            myCardsIcon.widthAnchor.constraint(equalToConstant: 48.0),
            myCardsIcon.leadingAnchor.constraint(equalTo: myAddressesStack.leadingAnchor, constant: 16.0)
        ])
    }
}
