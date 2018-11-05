//
//  UINavigationBarExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 7. 19..
//  Copyright © 2018년 myoung. All rights reserved.
//

import UIKit

//MARK: ## UINavigationBar Extension ##
extension UINavigationBar {
    
    func showBorderLine() {
        /*
         NavigationBar에 있는 라인 보여주는 멤버 함수
         - 반환값 타입은 없음
         - ex) self.navigationController?.navigationBar.showBorderLine() -> line show
        */
        findBorderLine().isHidden = false
    }
    
    func hideBorderLine() {
        /*
         NavigationBar에 있는 라인 숨겨주는 멤버 함수
         - 반환값 타입은 없음
         - ex) self.navigationController?.navigationBar.hideBorderLine() -> line hidden
        */
        findBorderLine().isHidden = true
    }
    
    private func findBorderLine() -> UIImageView! {
        /*
         navigationbar에서 UIImageView 찾아주는 메소드
         - 반환값 타입은 UIImageView!
        */
        return self.subviews
            .flatMap { $0.subviews }
            .compactMap { $0 as? UIImageView }
            .filter { $0.bounds.size.width == self.bounds.size.width }
            .filter { $0.bounds.size.height <= 2 }
            .first
    }
}
