//
//  GFSegmentedControl.swift
//  RegisterAndLogin
//
//  Created by Mac on 8/28/20.
//  Copyright © 2020 beshoy tharwat. All rights reserved.
//

import UIKit

class GFSegmentedControl: UISegmentedControl {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
       configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(item:[String]) {
        super.init(items: item)
//        self.selectedSegmentIndex = index
        configure()
    }
    
    
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8442851027)
        tintColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        selectedSegmentIndex = 0
        let font = UIFont.preferredFont(forTextStyle: .body)
        setTitleTextAttributes([NSAttributedString.Key.font : font], for: .normal)
        
        
        
    }
}
