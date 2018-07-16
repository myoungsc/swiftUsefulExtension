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
    
    var copyView: AnyObject? {
        /*
         - A computed property that copy Inherited UIVIew
         - Return type is 'AnyObject'
         - ex)  let originalView = UIView()
         guard let copyView = temp.copyView as? UIView else { return }
        */
        
        guard let object = NSKeyedUnarchiver.unarchiveObject(with: NSKeyedArchiver.archivedData(withRootObject: self)) else {
            return nil
        }
        return object as AnyObject
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        /*
         - A computed property that add the cornerRadius item to the inspector in xib or storyboard
         - Return type is nil
         - ex) Use StoryBoard, xib
        */
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        /*
         - A computed property that add the borderWidth item to the inspector in xib or storyboard
         - Return type is nil
         - ex) Use StoryBoard, xib
        */
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor? {
        /*
         - A computed property that add the borderColor item to the inspector in xib or storyboard
         - Return type is nil
         - ex) Use StoryBoard, xib
        */
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
}
