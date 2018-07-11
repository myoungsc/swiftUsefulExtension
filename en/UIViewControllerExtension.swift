//
//  UIViewcontrollerExtension_KOR.swift
//  dfae
//
//  Created by maccli1 on 2018. 7. 11..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

//MARK: ## UIViewController Extension ##
extension UIViewController {    
    func rootDismiss(_ rootViewcontroller: UIViewController, animated: Bool) {
        /*
         - Member function that moves to the first desired view controller when the view is moved to 'present modally' multiple times
         - Return type is nil
         - ex) Main => Setting => Notification('move location')
               self.rootDismiss(Main(), animated: ture) -> Notification => Main
        */
        var present = self.presentingViewController
        while true {
            if let vc = present, vc.isKind(of: rootViewcontroller.classForCoder) {
                vc.dismiss(animated: animated, completion: nil)
                break
            } else {
                present = present?.presentedViewController
            }
        }
    }
}
