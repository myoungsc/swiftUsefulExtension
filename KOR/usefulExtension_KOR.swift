//
//  usefulExtension_KOR.swift
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    
    /*
        - Int 타입의 값을 세자리 마다 ',' 찍어주는 메소드
        - 돈에 관련된 단위를 표현 할때 사용
        - 반환값의 타입은 String
        - ex)1000.threeDigitsComma => 1,000
    */
    var threeDigitsComma: String {
        let value: NSNumber = self as NSNumber
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        guard let resultValue = formatter.string(from: value) else { return "" }
        return resultValue
    }
    
}

