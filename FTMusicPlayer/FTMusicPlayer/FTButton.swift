//
//  FTButton.swift
//  FTIBInspectable
//
//  Created by liufengting https://github.com/liufengting on 16/8/15.
//  Copyright © 2016年 liufengting. All rights reserved.
//

import UIKit

@IBDesignable class FTButton: UIButton {

    @IBInspectable var layerCornerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = layerCornerRadius
        }
    }
    
    @IBInspectable var layerBorderColor : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = layerBorderColor.cgColor
        }
    }
    
    @IBInspectable var layerBorderWidth : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = layerBorderWidth
        }
    }
    
    @IBInspectable var imageViewContentMode : NSInteger = UIViewContentMode.scaleAspectFit.rawValue {
        didSet {
            self.imageView?.contentMode = UIViewContentMode(rawValue: imageViewContentMode)!
        }
    }

}


