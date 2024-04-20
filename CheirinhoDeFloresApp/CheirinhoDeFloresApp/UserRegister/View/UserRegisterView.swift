//
//  UserView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 02/04/24.
//

import UIKit


class UserRegisterView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Crie sua conta"
        label.font = UIFont(name: "Hiragino Sans W3", size: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var fullNameField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.placeholder = "Nome Completo"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .namePhonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var usernameField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.placeholder = "Nome de Usuário"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var passwordField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.placeholder = "Senha"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var emailField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.placeholder = "Email"
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var phoneField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.placeholder = "Telefone"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .phonePad
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Ir para endereço", for: .normal)
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
        addSubview(fullNameField)
        addSubview(usernameField)
        addSubview(passwordField)
        addSubview(emailField)
        addSubview(phoneField)
        addSubview(saveButton)
    }
    
    func setupConstraints() {
        titleLabelConstraints()
        fullNameFieldConstraints()
        usernameFieldConstraints()
        passwordFieldConstraints()
        emailFieldConstraints()
        phoneFieldConstraints()
        saveButtonConstraints()
    }
    
    func titleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 160.0),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func fullNameFieldConstraints() {
        NSLayoutConstraint.activate([
            fullNameField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24.0),
            fullNameField.heightAnchor.constraint(equalToConstant: 48.0),
            fullNameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            fullNameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func usernameFieldConstraints() {
        NSLayoutConstraint.activate([
            usernameField.topAnchor.constraint(equalTo: fullNameField.bottomAnchor, constant: 16.0),
            usernameField.heightAnchor.constraint(equalToConstant: 48.0),
            usernameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            usernameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func passwordFieldConstraints() {
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 16.0),
            passwordField.heightAnchor.constraint(equalToConstant: 48.0),
            passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func emailFieldConstraints() {
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 16.0),
            emailField.heightAnchor.constraint(equalToConstant: 48.0),
            emailField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            emailField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func phoneFieldConstraints() {
        NSLayoutConstraint.activate([
            phoneField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 16.0),
            phoneField.heightAnchor.constraint(equalToConstant: 48.0),
            phoneField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            phoneField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0)
        ])
    }
    
    func saveButtonConstraints() {
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: phoneField.bottomAnchor, constant: 16.0),
            saveButton.heightAnchor.constraint(equalToConstant: 48.0),
            saveButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            saveButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            //saveButton.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: -16.0)
        ])
    }
}
