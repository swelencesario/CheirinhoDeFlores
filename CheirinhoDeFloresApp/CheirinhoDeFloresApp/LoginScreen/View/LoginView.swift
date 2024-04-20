//
//  LoginView.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 01/04/24.
//

import UIKit

class LoginView: UIView {
    
    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "flor")
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        return icon
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Cheirinho de Flores"
        label.font = UIFont(name: "Bradley Hand Bold", size: 18.0)
        label.textColor = UIColor(named: "greatPinkColor")
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var usernameField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.placeholder = "username"
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var passwordField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "password"
        textField.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Logar", for: .normal)
        button.backgroundColor = UIColor(named: "greatPinkColor")
        button.tintColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 4.0
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var containerStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [usernameField, passwordField, loginButton])
        stack.axis = .vertical
        stack.spacing = 16.0
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var haveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Ainda não tem conta? "
        label.textAlignment = .center
        label.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton(configuration: .plain())
        button.setTitle("Registre-se", for: .normal)
        button.titleLabel?.font = UIFont(name: "Hiragino Sans W3", size: 14.0)
        button.tintColor = UIColor(named: "greatPinkColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var registerStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [haveAccountLabel, registerButton])
        stack.axis = .horizontal
        stack.spacing = 0
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
        addSubview(icon)
        addSubview(titleLabel)
        addSubview(containerStackView)
        addSubview(registerStackView)
    }
    
    func setupConstraints() {
        setIconConstraints()
        setTitleLabelConstraints()
        setUsernameFieldConstraints()
        setPasswordFieldConstraints()
        setButtonConstraints()
        setContainerStackConstraints()
        setRegisterStackConstraints()
    }
    
    func setIconConstraints() {
        NSLayoutConstraint.activate([
            icon.heightAnchor.constraint(equalToConstant: 75.0),
            icon.widthAnchor.constraint(equalToConstant: 75.0),
            icon.centerXAnchor.constraint(equalTo: centerXAnchor),
            icon.topAnchor.constraint(greaterThanOrEqualTo: topAnchor, constant: 40.0)
        ])
    }
    
    func setTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 8.0),
            titleLabel.centerXAnchor.constraint(equalTo: icon.centerXAnchor)
        ])
    }
    
    func setContainerStackConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40.0),
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    func setRegisterStackConstraints() {
        NSLayoutConstraint.activate([
            registerStackView.topAnchor.constraint(equalTo: containerStackView.bottomAnchor, constant: 32.0),
            registerStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setUsernameFieldConstraints() {
        NSLayoutConstraint.activate([
            usernameField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func setPasswordFieldConstraints() {
        NSLayoutConstraint.activate([
            passwordField.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    func setButtonConstraints() {
        NSLayoutConstraint.activate([
            loginButton.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
}
