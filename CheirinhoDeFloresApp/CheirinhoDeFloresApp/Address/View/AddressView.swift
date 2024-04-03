//
//  AddresView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 03/04/24.
//

import UIKit

class AddressView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Cadastre seu endereço"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var zipCodeField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "CEP"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var zipCodeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buscar cep", for: .normal)
        button.titleLabel?.font = UIFont(name: "Hiragino Sans W5 14.0", size: 14.0)
        button.tintColor = UIColor(named: "greatPinkColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var streetLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Rua"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var houseNumberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Número"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var complementLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Cadastre seu endereço"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var neighborhoodLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Bairro"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Cidade"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var stateLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Estado"
        label.font = UIFont(name: "Hiragino Sans W3 18.0", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Ir para endereço", for: .normal)
        button.backgroundColor = UIColor(named: "greatPinkColor")
        button.clipsToBounds = true
        button.layer.cornerRadius = 4.0
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        //setupViews()
        //setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
