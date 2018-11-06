//
//  UITextFieldExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 28..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    /**
     Enum is use on paddingAmount(_:direction:)
     */
    enum paddingDirection {
        case left
        case right
        case both
    }
    
    /**
     A Member function that set white space on UITextField
     - Return type is none
     - UITextFeild.paddingAmount(10, direction: .both)
     */
    func paddingAmount(_ amount: CGFloat, direction: UITextField.paddingDirection) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
    
        switch direction {
        case .left: self.leftView = paddingView
        case .right: self.rightView = paddingView
        case .both:
            self.leftView = paddingView
            self.rightView = paddingView
        }
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
    
}
