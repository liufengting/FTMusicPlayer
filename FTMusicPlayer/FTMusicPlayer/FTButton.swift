//
//  FTButton.swift
//  FTIBInspectable
//
//  Created by liufengting https://github.com/liufengting on 16/8/15.
//  Copyright © 2016年 liufengting. All rights reserved.
//

import UIKit

@IBDesignable class FTButton: UIButton {

    @IBInspectable var layerCornerRadius : CGFloat = CGFloat.nan {
        didSet {
            self.layer.cornerRadius = layerCornerRadius
        }
    }
    
    @IBInspectable var layerBorderColor : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = layerBorderColor.cgColor
        }
    }
    
    @IBInspectable var layerBorderWidth : CGFloat = CGFloat.nan {
        didSet {
            self.layer.borderWidth = layerBorderWidth
        }
    }
}


