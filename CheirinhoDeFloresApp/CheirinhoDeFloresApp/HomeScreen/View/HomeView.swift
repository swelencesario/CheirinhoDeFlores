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
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Presenteie com flores"
        label.font = UIFont(name: "Hiragino Sans W3", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    lazy var collection: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16.0
        layout.minimumInteritemSpacing = 8.0
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
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
        addSubview(titleLabel)
        addSubview(collection)
    }
    
    func setupConstraints() {
        bannerConstraints()
        titleLabelConstraints()
        collectionConstraints()
    }
    
    func bannerConstraints() {
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            banner.leadingAnchor.constraint(equalTo: leadingAnchor),
            banner.trailingAnchor.constraint(equalTo: trailingAnchor),
            banner.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func titleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: banner.bottomAnchor, constant: 8.0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func collectionConstraints() {
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16.0),
            collection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            collection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            collection.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16.0),
        ])
    }
}
