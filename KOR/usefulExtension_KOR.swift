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
         - Int 타입의 값을 세자리 마다 ',' 찍어주는 멤버 변수
         - 반환값의 타입은 String
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

//MARK: ## UIScrollView Extension ##
extension UIScrollView {
 
    func moveToBottom(_ animate: Bool) {
        /*
         - 스크롤 뷰 하단으로 이동이 필요할때 사용, animate Bool 타입의 입력인자를 통해 애니메이션 여부 결정
         - 반환값은 없음
         - ex) UIScrollView.moveToBottom(true)
        */
        
        let bottomPoint = CGPoint(x: 0, y: self.contentSize.height-self.bounds.height)
        self.setContentOffset(bottomPoint, animated: animate)
    }
    
}

