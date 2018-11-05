//
//  usefulExtension.swift
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
         When the RGB values are the same when the use colors
         - Return type is UIColor
         - ex) let black = UIColor.one(0.0)
         */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: 1.0)
    }
    
    class func one(_ value: CGFloat, alpha: CGFloat) -> UIColor {
        /*
         When the RGB values are the same when the use colors and color transparency decision by use alpha value
         - Return type is UIColor
         - ex) let black = UIColor.one(0.0, alpha: 0.5)
         */
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: alpha)
    }
}
