//
//  UIViewExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 29..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## UIView Extension ##
extension UIView {
    
    /**
     UIview를 상속받은 뷰의 원하는 방향만 둥글게 해주기
     - 반환값은 없음
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
     UIView를 상속받은 뷰를 복사 해주는 연산 프로퍼티
      - 반환값 타입은 AnyObject
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
     StoryBoard, xib에 있는 inspector에 cornerRadius 항목을 추가해주는 연산 프로퍼티
     - 반환값은 없음
     - ex) StoryBoard, xib에서 사용
     */
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    /**
     StoryBoard, xib에서 UIView를 포함한 컴포넌트 항목에 boarderWidth 추가해주는 연산 프로퍼티
     - 반환값은 없음
     - ex) StoryBoard, Xib에서 사용
     */
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
        
    /**
     StoryBoard, xib에서 UIView를 포함한 컴포넌트 항목에 borderColor 추가해주는 연산 프로퍼티
     - 반환값은 없음
     - ex) StoryBoard, Xib에서 사용
     */
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
    
}
