//
//  HomeCollectionViewCell.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 09/04/24.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeCollectionCellIdentifier"
    
    lazy var productImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "flower"))
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        layer.cornerRadius = 16
        layer.borderWidth = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        
    }
}
