//
//  DoubleExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 27..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension Double {
   
    /**
     Memeber function that rounds dicimal point according to want place
     - Return type Double
     - ex) 0.2289.roundToPlaces(2) -> 0.23
     */
    func roundToPlaces(_ places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
    
}


