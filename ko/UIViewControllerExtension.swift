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
         - 여러번의 'present modally'로 뷰를 이동한 경우 처음 원하는 뷰컨트롤러로 이동하는 멤버함수
         - 반환값은 없음
         - ex) Main => Setting => Notification('이동경로')
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
