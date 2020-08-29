//
//  GFTextField.swift
//  GitProject
//
//  Created by Mac on 6/23/20.
//  Copyright © 2020 beshoy tharwat. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configurs()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        configurs()

    }
    
    
    private func configurs(){
        translatesAutoresizingMaskIntoConstraints =  false
        layer.cornerRadius = 10
       // layer.borderWidth = 0.5
        layer.borderColor = UIColor.lightGray.cgColor
        textColor = .black
        tintColor = .black
        textAlignment = .left
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        autocorrectionType = .no
        returnKeyType = .go
        layer.sublayerTransform = CATransform3DMakeTranslation(10,5,10)
       
//        placeholder = "Enter a username"
        
        
        
        
        // if i wanna change keybpard
        //  keyboardType = .default
        
        
    }
}
