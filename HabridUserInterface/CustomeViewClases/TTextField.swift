//
//  TTextField.swift
//  HabridUserInterface
//
//  Created by Tushar on 27/07/18.
//  Copyright © 2018 Tushar. All rights reserved.
//

import Foundation
import UIKit

class TTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }
    
    private func setupTextField() {
        borderStyle = .none
        layer.cornerRadius = frame.size.height/2
        tintColor = Colors.darkGreay
        textColor = Colors.textColor
        font = UIFont(name: Fonts.avinerNextMedium, size: 15)
        backgroundColor = UIColor.white.withAlphaComponent(0.7)
        autocorrectionType = .no
        clipsToBounds = true
        
        let placeHolder = self.placeholder != nil ? self.placeholder! : ""
        let placeholderFont = UIFont(name: Fonts.avinerNextMedium, size: 15)
        attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedStringKey.foregroundColor: Colors.darkGreay, NSAttributedStringKey.font: placeholderFont ?? ""])
        
        let indentView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        leftView = indentView
        leftViewMode = .always
    }
}
