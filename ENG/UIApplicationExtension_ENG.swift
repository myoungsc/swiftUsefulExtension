//
//  UIApplicationExtension_KOR.swift
//  dfae
//
//  Created by maccli1 on 2018. 7. 9..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        /*
          - A Member class that return top viewcontroller
          - Return type is UIViewcontroller?
          - ex) if let topVC = UIApplication.topViewController() {
                     topVC.present(UIViewController(), animated: true, completion: nil)
                }
        */
        
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


