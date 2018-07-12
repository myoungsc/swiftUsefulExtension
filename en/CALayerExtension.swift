//
//  CALayerExtension_KOR.swift
//  dfae
//
//  Created by maccli1 on 2018. 7. 4..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## CALayer Extension ##
extension CALayer {
    
    func borderWidthColor(_ thickness: CGFloat, color: UIColor) {
        /*
         - Member function that 'borderwidth' and 'borderColor' processing to one line
         - Retrun type is nil
         - ex) YourView.layer.borderWidthColor(1.0, color: UIColor.black)
         */
        self.borderWidth = thickness
        self.borderColor = color.cgColor
    }
    
    func borderLineDirection(_ directions: [UIRectEdge], color: UIColor, thickness: CGFloat) {
        /*
         - A Member function that Add border line only the desire direction
         - Return type is nil
         - yourView.layer.borderLineDirection([.top, .bottom], color: UIColor.blue, thickness: 1.0)
        */
        for direction in directions {
            let border = CALayer()
            switch direction {
            case UIRectEdge.top:
                border.frame = CGRect(x: 0, y: 0, width: frame.width, height: thickness)
            case UIRectEdge.bottom:
                border.frame = CGRect(x: 0, y: frame.height-thickness, width: frame.width, height: thickness)
            case UIRectEdge.left:
                border.frame = CGRect(x: 0, y: 0, width: thickness, height: frame.height)
            case UIRectEdge.right:
                border.frame = CGRect(x: frame.width-thickness, y: 0, width: thickness, height: frame.height)
            default: break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
    
}
