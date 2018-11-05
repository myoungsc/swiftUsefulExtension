//
//  IntExtension.swift
//  Swift_Wiki_Extension
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
         Int 타입의 값을 세자리 마다 ',' 찍어주는 멤버 변수
         - 반환값의 타입은 String
         - ex) 1000.threeDigitsComma -> 1,000
        */
        
        let value: NSNumber = self as NSNumber
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        guard let resultValue = formatter.string(from: value) else { return "" }
        return resultValue
    }
    
}
