//
//  TButton.swift
//  HabridUserInterface
//
//  Created by Tushar on 27/07/18.
//  Copyright © 2018 Tushar. All rights reserved.
//

import Foundation
import UIKit

class TButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        setTitleColor(Colors.textColor, for: .normal)
        backgroundColor = .white
        titleLabel?.font = UIFont(name: Fonts.avinerNextMedium, size: 20)
        layer.cornerRadius = frame.size.height/2
    }
}
