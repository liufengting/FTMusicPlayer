//
//  MusicViewController.swift
//  FTMusicPlayer
//
//  Created by liufengting on 2016/11/8.
//  Copyright © 2016年 LiuFengting. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class MusicViewController: UIViewController {

    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var musicPlayer : AVPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.makeInvisable()


        self.playMusic(urlString: "http://download.lingyongqian.cn/music/MinuetInG.mp3")
        
        
    }

    @IBAction func leftButtonTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: { 
            
        })
    }

    @IBAction func rightButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
    
    
    

    func playMusic(urlString: String) {
        
        let item = AVPlayerItem(url: URL(string: urlString)!)
        
        if self.musicPlayer == nil {
            self.musicPlayer = AVPlayer.init(playerItem: item)
        }else{
            self.musicPlayer.replaceCurrentItem(with: item)
        }
        
        self.musicPlayer.play()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}


