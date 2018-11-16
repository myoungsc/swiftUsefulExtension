//
//  UIViewExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 29..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /**
     A method that round the edges of the want directions in inherited view
     - Return type is none
     - ex) yourView.cornerDirectionsCornerRadius([.topLeft, .topRight], cornerRadiiSize: 10)
     - UIRectCorner -> [.topLeft, .topRight, .bottomLeft, .bottomRight, .allCorners]
     */
    func cornerDirectionsCornerRadius(_ directions: UIRectCorner, cornerRadiiSize: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: directions,
                                    cornerRadii: CGSize(width: cornerRadiiSize, height: cornerRadiiSize))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    
    /**
     A computed property that copy Inherited UIVIew
     - Return type is 'AnyObject'
     - ex)  let originalView = UIView()
     guard let copyView = temp.copyView as? UIView else { return }
     */
    var copyView: AnyObject? {
        guard let object = NSKeyedUnarchiver.unarchiveObject(with: NSKeyedArchiver.archivedData(withRootObject: self)) else {
            return nil
        }
        return object as AnyObject
    }
    
    /**
     A computed property that add the cornerRadius item to the inspector in xib or storyboard
     - Return type is none
     - ex) Use StoryBoard, xib
     */
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    /**
     A computed property that add the borderWidth item to the inspector in xib or storyboard
     - Return type is none
     - ex) Use StoryBoard, xib
     */
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    /**
     A computed property that add the borderColor item to the inspector in xib or storyboard
     - Return type is none
     - ex) Use StoryBoard, xib
     */
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
}
