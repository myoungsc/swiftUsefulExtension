//
//  DateExtension_KOR.swift
//  dfae
//
//  Created by maccli1 on 2018. 6. 26..
//  Copyright © 2018년 myoung. All rights reserved.
//
import Foundation
import UIKit

extension Date {
 
    func dateToString(_ format: String) -> String {
        /*
         - 데이터 형식을 원하는 String 형식으로 변환해서 리턴해주는 멤버 함수
         - 반환값의 타입은 String
         - ex) Date().dateToString("yyMMdd") -> 180626
        */

        let formatter = DateFormatter()
        formatter.dateFormat = format
        let value = formatter.string(from: self)
        
        return value
    }
    
}
