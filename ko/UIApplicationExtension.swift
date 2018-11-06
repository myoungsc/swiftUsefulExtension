//
//  UIApplicationExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 7. 9..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    /**
     - 상태바를 UIView로 리턴해주는 연산 프로퍼티
     - 반환값 타입은 UIView?
     - if let statusBar = UIApplication.shared.statusBarView {
     statusBar.backgroundColor = UIColor.blue
     }
     */
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    
    /**
     - 최상위 뷰컨트롤러를 반환하는 멤버 클래스
     - 반환값 타입은 UIViewcontroller?
     - ex) if let topVC = UIApplication.topViewController() {
     topVC.present(UIViewController(), animated: true, completion: nil)
     }
     */
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }

        return base
    }
    
}


