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
    
    var reversed: String {
        /*
         - A computed property that return a String convert reversd 
         - Return type is 'String'
         - ex) "Hello".reversed -> olleH
         */
        return self.reversed().map { String($0) }.joined(separator: "")
    }
    
    var initialKorea: String {
        /*
         - A computed property that 'String' convert it to korea initial character
         - Return type is 'String'
         - ex) "안녕하세요".initialKorea -> ㅇㄴㅎㅅㅇ
         */
        var initialString = ""
        let koreaInitials: [String] = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"]
        for element in self {
            for ch in element.unicodeScalars {
                if ch.value >= 44032 && ch.value <= 55203 { // korean
                    let unicode = ch.value-44032
                    let resultInitial = unicode / 21 / 28
                    initialString += koreaInitials[Int(resultInitial)]
                } else {
                    initialString += String(element)
                }
            }
        }
        return initialString
    }
    
    var makePhoneNumber: String {
        /*
         - A computed property that make an 11-digit phone number
         - Return type is 'String'
         - ex) "01011112222".makePhoneNumber -> 010-1111-2222
         */
        return self.replacingOccurrences(of: "(\\d{3})(\\d+)(\\d{4})", with: "$1-$2-$3", options: .regularExpression, range: nil)
    }
    
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
