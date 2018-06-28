//
//  UITextFieldExtension_KOR.swift
//  dfae
//
//  Created by maccli1 on 2018. 6. 28..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## UITextFeild Extension ##
extension UITextField {
        
    enum paddingDirection {
        /*
         - Enum is use on paddingAmount(_:direction:)
        */
        
        case left
        case right
        case both
    }
    
    func paddingAmount(_ amount: CGFloat, direction: UITextField.paddingDirection) {
        /*
         - A Member function that set white space on UITextField
         - Return type is nil
         - UITextFeild.paddingAmount(10, direction: .both)
        */
        
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
