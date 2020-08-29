//
//  LoginCollectionViewCell.swift
//  RegisterAndLogin
//
//  Created by Mac on 8/28/20.
//  Copyright © 2020 beshoy tharwat. All rights reserved.
//

import UIKit

class LoginCell: UICollectionViewCell {
    static let loginCellId = "loginCell"
    
    private lazy var emailText = GFTextField(placeholder: "   Enter your email")
    private lazy var passwordText = GFTextField(placeholder: "   Enter your password")
    private lazy var forgetpasswordButton = GFButton(backgroundColor: .clear, title: "Forget your password?", titleColor: .black)
    private lazy var loginButton = GFButton(backgroundColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), title: "Login", titleColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        let line = UIView()
        line.backgroundColor = .gray
        let line1 = UIView()
        line1.backgroundColor = .gray
        let stackView = UIStackView(arrangedSubviews: [emailText,line, passwordText,line1, forgetpasswordButton, loginButton])
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
            stackView.heightAnchor.constraint(equalToConstant: 260),
            
            emailText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            emailText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            emailText.heightAnchor.constraint(equalToConstant: 57),
            line.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line.heightAnchor.constraint(equalToConstant: 1),
            
            passwordText.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            passwordText.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            passwordText.heightAnchor.constraint(equalToConstant: 57),
            line1.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 12),
            line1.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -12),
            line1.heightAnchor.constraint(equalToConstant: 1),
            
            forgetpasswordButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            forgetpasswordButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            forgetpasswordButton.heightAnchor.constraint(equalToConstant: 57),
            
            loginButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 57),
            
            ])
        
    }
}
