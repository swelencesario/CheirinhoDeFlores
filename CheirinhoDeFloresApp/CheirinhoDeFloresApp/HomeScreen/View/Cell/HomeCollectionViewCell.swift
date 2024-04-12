//
//  HomeCollectionViewCell.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 09/04/24.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeCollectionCellIdentifier"
    
    lazy var flowerNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var flowerImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "rosa"))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(flowerNameLabel)
        addSubview(flowerImage)
        
        flowerNameLabelConstraints()
        productNameConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(flower: CellViewModel) {
        flowerNameLabel.text = flower.flowerName.capitalized
        flowerImage.loadImageFromURL(urlString: flower.flowerUrl)
    }
    
    func flowerNameLabelConstraints() {
        NSLayoutConstraint.activate([
            flowerNameLabel.topAnchor.constraint(equalTo: topAnchor),
            flowerNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
            flowerNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    func productNameConstraints() {
        NSLayoutConstraint.activate([
            flowerImage.topAnchor.constraint(equalTo: flowerNameLabel.bottomAnchor, constant: 8.0),
            flowerImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            flowerImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            flowerImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
