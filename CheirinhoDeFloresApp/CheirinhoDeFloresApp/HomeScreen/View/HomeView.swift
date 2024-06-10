//
//  HomeView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 08/04/24.
//

import UIKit

class HomeView: UIView {
    
    lazy var banner: UIImageView = {
        let image = UIImageView(image: UIImage(named: "casal jovem"))
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image?.withRenderingMode(.alwaysOriginal)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var collection: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16.0
        layout.minimumInteritemSpacing = 8.0
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
        collection.showsVerticalScrollIndicator = false
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    lazy var cartButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Carrinhho", for: .normal)
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
        addSubview(banner)
        addSubview(collection)
        //addSubview(cartButton)
    }
    
    func setupConstraints() {
        bannerConstraints()
        collectionConstraints()
        //cartButtonConstraints()
    }
    
    func bannerConstraints() {
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8.0),
            banner.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
            banner.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0),
            banner.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func collectionConstraints() {
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: banner.bottomAnchor, constant: 24.0),
            collection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            collection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            collection.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -104.0),
        ])
    }
    
    func cartButtonConstraints() {
        NSLayoutConstraint.activate([
            cartButton.topAnchor.constraint(equalTo: collection.bottomAnchor, constant: 16.0),
            cartButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            cartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            cartButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24.0)
        ])
    }
}
