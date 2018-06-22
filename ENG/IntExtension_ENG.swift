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
