//
//  UIButtonExtension.swift
//  dfae
//
//  Created by maccli1 on 20/12/2018.
//  Copyright © 2018 myoung. All rights reserved.
//

import UIKit

extension UIButton {
    
    /**
     버튼이 포함된 셀의 IndexPath 받아오는 메소드
      - 반환값은 IndexPath
      - ex) let indexPath = sender.indexPathFromTableView(yourTableView)
     */
    func indexPathFromTableView(_ tableView: UITableView) -> IndexPath {
        let button = self.convert(CGPoint.zero, to: tableView)
        guard let indexPath = tableView.indexPathForRow(at: button) else {
            print("guard error")
            return IndexPath(row: 0, section: 0)
        }
        return indexPath
    }
    
}
