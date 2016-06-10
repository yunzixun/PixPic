//
//  UIImage+BaseImage.swift
//  P-effect
//
//  Created by Jack Lapin on 02.02.16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit

extension UIImage {
    
    static var appBackButton: UIImage? {
        return UIImage(named: "icon_back_arrow")
    }
    
    static var placeholderImage: UIImage? {
        return UIImage(named: "noPhotoPlaceholder")
    }
    
    static var avatarPlaceholderImage: UIImage? {
        return UIImage(named: "profile_placeholder")
    }
    
    static var appAddPhotoButton: UIImage? {
        return UIImage(named: "btn_make_photo")
    }
    
    public static func imageFromColor(color: UIColor, size: CGSize) -> UIImage? {
        let rect = CGRectMake(0, 0, size.width, size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
}
