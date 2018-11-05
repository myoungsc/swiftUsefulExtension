//
//  UIColorExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## UIColor Extension ##
extension UIColor
{
    class func one(_ value: CGFloat) -> UIColor {
        /*
         색을 사용하는데 있어서 rgb 값이 동일 할때 사용
         - 반환값의 타입은 UIColor
         - ex) let black = UIColor.one(0.0)
        */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: 1.0)
    }
    
    class func one(_ value: CGFloat, alpha: CGFloat) -> UIColor {
        /*
         색을 사용하는데 있어서 rgb 값이 동일 하고, 알파값을 통해 투명도를 설정할때 사용
         - 반환값의 타입은 UIColor
         - ex) let black = UIColor.one(0.0, alpha: 0.5)
        */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: alpha)
    }
}
