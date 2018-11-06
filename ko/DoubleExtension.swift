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
     자리수에 맞춰서 소수점 반올림 해주는 멤버 함수
     - 반환값 타입은 'Double'
     - ex) 0.2289.roundToPlaces(2) -> 0.23
     */
    func roundToPlaces(_ places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
    
}


