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
         - A member variable that check email format to regular expreesion
         - Return type is 'Bool'
         - ex) "myoungsc.dev@gamil.com".isCheckValidEmail -> true
         */
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: self)
    }
    
    func differentNumberFont(_ numberFont: UIFont, otherFont: UIFont) -> NSMutableAttributedString {
        /*
         - A member function that processes number string to diffrent font in string
         - Return type is NSMutableAttributedString
         - ex) "a1b2c3d4".differentNumberFont(UIFont.boldSystemFont(ofSize: 13),
                                              otherFont: UIFont.systemFont(ofSize: 13))
         */
        
        let attr = NSMutableAttributedString(string: self)
        let digitSet = CharacterSet.decimalDigits
        for (index, ch) in self.unicodeScalars.enumerated() {
            let font = digitSet.contains(ch) ? numberFont : otherFont
            attr.addAttributes([.font: font], range: NSMakeRange(index, 1))
        }
        return attr
    }
    
}

//MARK: ## UIScrollView Extension ##
extension UIScrollView {
    
    func moveToBottom(_ animate: Bool) {
        /*
         - A member variable that UIScrollView content move to bottom
         - Return type is nil
         - ex) UIScrollView.moveToBottom(true)
         */
        
        let bottomPoint = CGPoint(x: 0, y: self.contentSize.height-self.bounds.height)
        self.setContentOffset(bottomPoint, animated: animate)
    }
    
}

//MARK: ## UIColor Extension ##
extension UIColor
{
    class func one(_ value: CGFloat) -> UIColor {
        /*
         - When the RGB values are the same when the use colors
         - Return type is UIColor
         - ex) let black = UIColor.one(0.0)
         */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: 1.0)
    }
    
    class func one(_ value: CGFloat, alpha: CGFloat) -> UIColor {
        /*
         - When the RGB values are the same when the use colors and color transparency decision by use alpha value
         - Return type is UIColor
         - ex) let black = UIColor.one(0.0, alpha: 0.5)
         */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: alpha)
    }
}
