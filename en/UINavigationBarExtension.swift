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
         A function that show lines from NavigationBar
         - Return type is none
         - ex) self.navigationController?.navigationBar.showBorderLine() -> line show
        */
        findBorderLine().isHidden = false
    }
    
    func hideBorderLine() {
        /*
         A function that hide lines from NavigationBar
         - Return type is none
         - ex) self.navigationController?.navigationBar.hideBorderLine() -> line hidden
        */
        findBorderLine().isHidden = true
    }
    
    private func findBorderLine() -> UIImageView! {
        /*
         - A method that find UIImageView from NavigationBar
         - Return type is UIImageView!
        */
        
        return self.subviews
            .flatMap { $0.subviews }
            .compactMap { $0 as? UIImageView }
            .filter { $0.bounds.size.width == self.bounds.size.width }
            .filter { $0.bounds.size.height <= 2 }
            .first
    }
}
