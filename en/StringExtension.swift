//
//  usefulExtension_KOR.swift
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## String Extension ##
extension String {
    
    func selectTextFromRange(_ range: NSRange) -> String { // Range에 맞춰서 쪼개기
        /*
         - Member function that 'String' separation to NSRange value and return separat 'String'
         - Return type is 'String'
         - ex) print("Hello".selectTextRange(NSMakeRange(2, 2))) -> llo
         */
        var result = ""
        for (i, element) in self.enumerated() {
            if i >= range.location && i <= (range.length + range.location) {
                result.append(element)
            }
        }
        return result
    }
    
    func stringToDate(_ format: String) -> Date {
        /*
         - A Memeber function that change String to Date by format
         - Return type is 'Date'
         - ex) "20180710".stringToDate("yyyyMMdd") -> 2018-07-09 15:00:00 +0000
         */
        let formatter = DateFormatter()
        formatter.dateFormat = format
        guard let date = formatter.date(from: self) else { return Date() }
        return date
    }
    
    func reduceFromCount(_ reduceCount: Int, want substitution: String) -> String {
        /*
         - A Member function that relpaces the last character with the desired character according by number
         - Return type is 'String'
         - ex) "Swift is Awesome!!".reduceFromCount(15, want: "...") -> Swift is Awesome...
        */
        
        var value = "", count = 0
        for element in self {
            let temp = String(element)
            
            if temp.utf8.count == 1 { count += 1 }
            else { count += 2 }
            
            value.append(element)
            if count > reduceCount {
                value = String(value.dropLast())
                value.append(substitution)
                break
            }
        }
        return value
    }
    
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
