//
//  UIImageExtension.swift
//  SimplyInspiring
//
//  Created by Ani Adhikary on 30/10/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

extension UIImage {
    
    func alpha(_ value:CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}

//imageview?.layer.cornerRadius = (imageview?.frame.size.width ?? 0.0) / 2
//imageview?.clipsToBounds = true
//imageview?.layer.borderWidth = 3.0
//imageview?.layer.borderColor = UIColor.white.cgColor


class SAImageView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 10
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
}

class CropImage {
    static func cropImage(image: UIImage, toRect rect: CGRect) -> UIImage? {
        // Crop the image
        var rect = rect
        rect.size.width = rect.width * image.scale
        rect.size.height = rect.height * image.scale
        guard let imageRef = image.cgImage?.cropping(to: rect) else {
            return nil
        }
        
        let croppedImage: UIImage = UIImage(cgImage: imageRef)
        return croppedImage
    }
}
