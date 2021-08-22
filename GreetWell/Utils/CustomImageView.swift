//
//  CustomImageView.swift
//
//  Created by Ani Adhikary on 10/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 10
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }
    
}
