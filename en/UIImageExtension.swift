//
//  UIImageExtension.swift
//  dfae
//
//  Created by maccli1 on 2018. 7. 17..
//  Copyright © 2018년 myoung. All rights reserved.
//

import UIKit

//MARK: ## UIImage extension ##
extension UIImage {
    
    func makeImageOneColor(_ tintColor: UIColor) -> UIImage? {
        /*
         - A function that make one color Image
         - Return type is 'UIImage?'
         - ex) guard let makeImage = UIImage().makeImageOneColor(UIColor.red) else { return }
               -> <UIImage: 0x6000000ab4c0>, {1, 1}
        */
        
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        tintColor.setFill()
        UIRectFill(rect)
        guard let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        
        return image
    }
    
}
