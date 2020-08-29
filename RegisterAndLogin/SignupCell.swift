//
//  SignupCollectionViewCell.swift
//  RegisterAndLogin
//
//  Created by Mac on 8/28/20.
//  Copyright © 2020 beshoy tharwat. All rights reserved.
//

import UIKit

class SignupCell: UICollectionViewCell {
    
    static let signupCellId = "signupCell"
    private lazy var firstNameText = GFTextField(placeholder: "First name")
    private lazy var lastNameText = GFTextField(placeholder: "last name")
    private lazy var emailText = GFTextField(placeholder: "Email")
    private lazy var passwordText = GFTextField(placeholder: "please enter your password")
    private lazy var loginButton = GFButton(backgroundColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), title: "Login", titleColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    private lazy var creatAccountButton = GFButton(backgroundColor: .clear, title: "Creat Account", titleColor: .black)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        let view = UIView()
        let line = UIView()
        line.backgroundColor = .gray
        let line1 = UIView()
        line1.backgroundColor = .gray
        let line2 = UIView()
        line2.backgroundColor = .gray
        let line3 = UIView()
        line3.backgroundColor = .gray
        let stackView = UIStackView(arrangedSubviews: [firstNameText,line,lastNameText,line1,emailText,line2, passwordText,line3,view ,loginButton,creatAccountButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 5
        stackView.alignment = .center
        addSubview(stackView)
        passwordText.isSecureTextEntry = true
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 420),
            
            firstNameText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            firstNameText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            firstNameText.heightAnchor.constraint(equalToConstant: 57),
            line.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line.heightAnchor.constraint(equalToConstant: 1),
            
            lastNameText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            lastNameText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            lastNameText.heightAnchor.constraint(equalToConstant: 57),line.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            line1.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line1.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line1.heightAnchor.constraint(equalToConstant: 1),
            
            emailText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            emailText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            emailText.heightAnchor.constraint(equalToConstant: 57),line.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            line2.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line2.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line2.heightAnchor.constraint(equalToConstant: 1),
            
            passwordText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            passwordText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            passwordText.heightAnchor.constraint(equalToConstant: 57),line.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            line3.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line3.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line3.heightAnchor.constraint(equalToConstant: 1),
            
            view.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            view.heightAnchor.constraint(equalToConstant: 20),
            
            loginButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 57),
            
            creatAccountButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            creatAccountButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40),
            creatAccountButton.heightAnchor.constraint(equalToConstant: 57),
            
            ])
        
    }
    
}
