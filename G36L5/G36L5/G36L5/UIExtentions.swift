//
//  UIExtentions.swift
//  G31L12
//
//  Created by Ivan Vasilevich on 11/20/15.
//  Copyright © 2015 Ivan Besarab. All rights reserved.
//

import UIKit


extension UIImage {
    static func imageScaled(img:UIImage, size:CGSize) -> UIImage? {
            UIGraphicsBeginImageContext(size)
            img.drawInRect(CGRectMake(0, 0, size.width, size.height))
            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext();
            return newImage;
    }
    
    func tintedBackgroundImageWithColor(tintColor: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        tintColor.setFill()
        let bounds = CGRectMake(0, 0, self.size.width, self.size.height)
        UIRectFill(bounds)
        self.drawInRect(bounds, blendMode: .SourceAtop, alpha: 1)
        
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return tintedImage;
    }
}

extension UIColor {
    convenience init(rgb: UInt, alphaVal: CGFloat) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(alphaVal)
        )
    }
    
    static func randomColor() -> UIColor {
        return UIColor(
            red: CGFloat(arc4random_uniform(256))/255,
            green: CGFloat(arc4random_uniform(256))/255,
            blue: CGFloat(arc4random_uniform(256))/255,
            alpha: 1)
    }
}
