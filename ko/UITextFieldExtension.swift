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
     paddingAmount(_:direction:) 함수에 사용되는 enum
     */
    enum paddingDirection {
        case left
        case right
        case both
    }
    
    /**
     UITextField의 사이드에 여백을 주는 멤버 함수
     - 반환값은 없음
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
    
    /**
     StoryBoard, xib에 있는 inspector에 UITextField placeHolderColor 항목을 추가해주는 연산 프로퍼티
     - 반환값은 없음
     - ex) StoryBaord, xib에서 사용
     */
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
    
}
