//
//  HomeViewController.swift
//  FTMusicPlayer
//
//  Created by liufengting on 2016/11/8.
//  Copyright © 2016年 LiuFengting. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}



extension UINavigationController {
    
    func makeInvisable() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
    }
    
}
