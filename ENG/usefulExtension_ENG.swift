//
//  usefulExtension_KOR.swift
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## Int Extension ##
extension Int {
    
    var threeDigitsComma: String {
        /*
         - Member variable is ',' print the value of an Int type three digits
         - Use when expression to money
         - Return type is 'String'
         - ex)1000.threeDigitsComma => 1,000
         */
        
        let value: NSNumber = self as NSNumber
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        guard let resultValue = formatter.string(from: value) else { return "" }
        return resultValue
    }
    
}

//MARK: ## String Extension ##
extension String {
    
    var isCheckValidEmail: Bool {
        /*
         - Member variable is check email format to regular expreesion
         - Use when check email format
         - Return type is 'Bool'
         - ex) "myoungsc.dev@gamil.com".isCheckValidEmail -> true
         */
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: self)
    }
    
}

//MARK: ## UIScrollView Extension ##
extension UIScrollView {
    
    func moveToBottom(_ animate: Bool) {
        /*
         - UIScrollView content move to bottom by function
         - Use when UIScrollView content move to bottom
         - Return type is nil
         - ex) UIScrollView.moveToBottom(true)
         */
        
        let bottomPoint = CGPoint(x: 0, y: self.contentSize.height-self.bounds.height)
        self.setContentOffset(bottomPoint, animated: animate)
    }
    
}
