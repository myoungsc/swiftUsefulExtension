//
//  DateExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 26..
//  Copyright © 2018년 myoung. All rights reserved.
//
import Foundation
import UIKit

extension Date {
 
    /**
     데이터 형식을 원하는 String 형식으로 변환해서 리턴해주는 멤버 함수
     - 반환값의 타입은 String
     - ex) Date().dateToString("yyMMdd") -> 180626
     */
    func dateToString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let value = formatter.string(from: self)
        
        return value
    }
    
}
