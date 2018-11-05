//
//  URLExtension.swift
//  Swift_Wiki_Extension
//
//  Created by myoung on 05/11/2018.
//  Copyright © 2018 myoung. All rights reserved.
//

import UIKit

extension URL {
    
    /*
     A property that get Image Size From URL
     - Retrun type is CGSize
     - ex) guard let url = URL(string: "https://avatars3.githubusercontent.com/u/33539012?s=200&v=4") else { return }
            print(url.imageSize) -> (420.0, 420.0)
     */
    var imageSize: CGSize {
        guard let imageSource = CGImageSourceCreateWithURL(self as CFURL, nil),
            let imageProperties = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, nil) as Dictionary?,
            let pixelWidth = imageProperties[kCGImagePropertyPixelWidth] as? Int,
            let pixelHeight = imageProperties[kCGImagePropertyPixelHeight] as? Int else {
                return CGSize.zero
        }
        return CGSize(width: CGFloat(pixelWidth), height: CGFloat(pixelHeight))
    }
}
