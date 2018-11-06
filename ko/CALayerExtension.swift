//
//  CALayerExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 7. 4..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    /**
     borderWidth, borderColor 한줄에 처리하는 멤버 함수
     - 반환값은 없음
     - ex) YourView.layer.borderWidthColor(1.0, color: UIColor.black)
     */
    func borderWidthColor(_ thickness: CGFloat, color: UIColor) {
        self.borderWidth = thickness
        self.borderColor = color.cgColor
    }
    
    /**
     border line을 원하는 방향으로만 더해주는 멤버 함수
     - 반환값은 없음
     - ex) yourView.layer.borderLineDirection([.top, .bottom], color: UIColor.blue, thickness: 1.0)
     */
    func borderLineDirection(_ directions: [UIRectEdge], color: UIColor, thickness: CGFloat) {
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
