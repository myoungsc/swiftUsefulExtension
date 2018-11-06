//
//  usefulExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UIScrollView {
    
    /**
     A member variable that UIScrollView content move to bottom
     - Return type is none
     - ex) UIScrollView.moveToBottom(true)
     */
    func moveToBottom(_ animate: Bool) {
        let bottomPoint = CGPoint(x: 0, y: self.contentSize.height-self.bounds.height)
        self.setContentOffset(bottomPoint, animated: animate)
    }
    
}
