//
//  UIViewExtension.swift
//  dfae
//
//  Created by maccli1 on 2018. 6. 29..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## UIView Extension ##
extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        /*
         - A Member variable that add the cornerRadius item to the inspector in xib or storyboard
         - Return type is nil
         - Use StoryBoard, xib
        */
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
}
