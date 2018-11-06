//
//  UIScrollViewExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 18..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension UIScrollView {
 
    /**
     스크롤 뷰 하단으로 이동이 필요할때 사용, animate Bool 타입의 입력인자를 통해 애니메이션 여부 결정
     - 반환값은 없음
     - ex) UIScrollView.moveToBottom(true)
     */
    func moveToBottom(_ animate: Bool) {
        let bottomPoint = CGPoint(x: 0, y: self.contentSize.height-self.bounds.height)
        self.setContentOffset(bottomPoint, animated: animate)
    }
    
}
