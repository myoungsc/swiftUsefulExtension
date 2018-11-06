//
//  DataExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 2018. 6. 25..
//  Copyright © 2018년 myoung. All rights reserved.
//

import Foundation
import UIKit

extension Data {
    
    /**
     A member function that return size of data by storage unit
     - Return type is String
     - ex) Data.dataSizeOtherFormat([.useKB]) -> "1 KB"
     */
    func dataSizeOtherFormat(_ unit: ByteCountFormatter.Units) -> String {
        let bcf = ByteCountFormatter()
        bcf.allowedUnits = unit // option: .useBytes, .useKB, .useMB, .useGB ...
        bcf.countStyle = .file
        
        return bcf.string(fromByteCount: Int64(self.count))
    }
    
}
