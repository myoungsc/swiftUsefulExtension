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
    
    var isCheckValidEmail: Bool {
        /*
         - 정규식을 통해 유효한 이메일인지 판단해주는 멤버 변수
         - 반환값의 타입은 Bool
         - ex) "myoungsc.dev@gamil.com".isCheckValidEmail -> true
        */
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
       
        return emailPredicate.evaluate(with: self)
    }
    
    func differentNumberFont(_ numberFont: UIFont, otherFont: UIFont) -> NSMutableAttributedString {
        /*
         - 문자열 안에 있는 숫자만 원하는 폰트로 처리 해주는 멤버 함수
         - 반환값의 타입은 NSMutableAttributedString
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
