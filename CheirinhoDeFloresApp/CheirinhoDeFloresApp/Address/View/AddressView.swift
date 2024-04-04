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
        label.font = UIFont(name: "Hiragino Sans W3", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var zipCodeField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "CEP"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var zipCodeButton: UIButton = {
        let button = UIButton(configuration: .plain())
        button.setTitle("Buscar cep", for: .normal)
        button.titleLabel?.font = UIFont(name: "Hiragino Sans W5", size: 14.0)
        button.tintColor = UIColor(named: "greatPinkColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var streetField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Rua"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var houseNumberField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Número"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        return textField
    }()
    
    lazy var complementField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Complemento"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var numberAndComplementStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [houseNumberField, complementField])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 8.0
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var neighborhoodField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Bairro"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var cityField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Cidade"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var stateField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Estado"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Concluir", for: .normal)
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
        addSubview(titleLabel)
        addSubview(zipCodeField)
        addSubview(zipCodeButton)
        addSubview(streetField)
        addSubview(numberAndComplementStack)
        addSubview(neighborhoodField)
        addSubview(cityField)
        addSubview(stateField)
        addSubview(saveButton)
    }
    
    func setupConstraints() {
        titleLabelConstraints()
        zipCodeFieldConstraints()
        zipCodeButtonConstraints()
        streetFieldConstraints()
        houseNumberFieldConstraints()
        complementFieldConstraints()
        numberAndComplementStackConstraints()
        neighborhoodFieldConstraints()
        cityLabelConstraints()
        stateLabelConstraints()
        saveButtonConstraints()
    }
    
    func titleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 160.0),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func zipCodeFieldConstraints() {
        NSLayoutConstraint.activate([
            zipCodeField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24.0),
            zipCodeField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            zipCodeField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func zipCodeButtonConstraints() {
        NSLayoutConstraint.activate([
            zipCodeButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24.0),
            zipCodeButton.leadingAnchor.constraint(equalTo: zipCodeField.trailingAnchor, constant: 8.0),
            zipCodeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            zipCodeButton.bottomAnchor.constraint(equalTo: zipCodeField.bottomAnchor)
        ])
    }
    
    func streetFieldConstraints() {
        NSLayoutConstraint.activate([
            streetField.topAnchor.constraint(equalTo: zipCodeField.bottomAnchor, constant: 16.0),
            streetField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            streetField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            streetField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func houseNumberFieldConstraints() {
        NSLayoutConstraint.activate([
            houseNumberField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func complementFieldConstraints() {
        NSLayoutConstraint.activate([
            complementField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func numberAndComplementStackConstraints() {
        NSLayoutConstraint.activate([
            numberAndComplementStack.topAnchor.constraint(equalTo: streetField.bottomAnchor, constant: 16.0),
            numberAndComplementStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            numberAndComplementStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func neighborhoodFieldConstraints() {
        NSLayoutConstraint.activate([
            neighborhoodField.topAnchor.constraint(equalTo: numberAndComplementStack.bottomAnchor, constant: 16.0),
            neighborhoodField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            neighborhoodField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            neighborhoodField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func cityLabelConstraints() {
        NSLayoutConstraint.activate([
            cityField.topAnchor.constraint(equalTo: neighborhoodField.bottomAnchor, constant: 16.0),
            cityField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            cityField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            cityField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func stateLabelConstraints() {
        NSLayoutConstraint.activate([
            stateField.topAnchor.constraint(equalTo: cityField.bottomAnchor, constant: 16.0),
            stateField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            stateField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            stateField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func saveButtonConstraints() {
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: stateField.bottomAnchor, constant: 16.0),
            saveButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            saveButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            saveButton.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
}
