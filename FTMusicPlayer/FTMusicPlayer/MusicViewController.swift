//
//  MusicViewController.swift
//  FTMusicPlayer
//
//  Created by liufengting on 2016/11/8.
//  Copyright © 2016年 LiuFengting. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.makeInvisable()

        
        self.pauseButton.setTitle("\u{e613}", for: UIControlState.normal)
        self.previousButton.setTitle("\u{e611}", for: UIControlState.normal)
        self.nextButton.setTitle("\u{e612}", for: UIControlState.normal)

    }

    @IBAction func leftButtonTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: { 
            
        })
    }

    @IBAction func rightButtonTapped(_ sender: UIBarButtonItem) {
        
    }

}

extension UINavigationController {
    
    func makeInvisable() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
    }
    
}
