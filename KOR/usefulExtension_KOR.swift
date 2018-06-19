//
//  usefulExtension_KOR.swift
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    
    var threeDigitsComma: String {
        /*
         - Int 타입의 값을 세자리 마다 ',' 찍어주는 멤버변수
         - 돈에 관련된 단위를 표현 할때 사용
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

extension String {
    
    var isCheckValidEmail: Bool {
        /*
         - 정규식을 통해 유효한 이메일인지 판단해주는 멤버변수
         - 이메일 형식 검사를 할때 사용
         - 반환값의 타입은 Bool
         - ex) "myoungsc.dev@gamil.com".isCheckValidEmail -> true
        */
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
       
        return emailPredicate.evaluate(with: self)
    }
    
}
