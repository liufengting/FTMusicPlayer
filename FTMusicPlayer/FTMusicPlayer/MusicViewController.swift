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
    
    
    
    lazy var musicPlayer : AVPlayer = {
       let player = AVPlayer()
        
        
        return player
    }()
    
    
    
    
    
    
    
    
    
    
    
//    
//    -(void)playWithUrl:(MusicModel*)model
//    {
//    AVPlayerItem *item = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:model.url]];
//    
//    //替换当前音乐资源
//    [self.player replaceCurrentItemWithPlayerItem:item];
//    
//    //刷新界面UI
//    [self reloadUI:model];
//    
//    //监听音乐播放完成通知
//    [self addNSNotificationForPlayMusicFinish];
//    
//    //开始播放
//    [self.player play];
//    
//    //监听播放器状态
//    [self addPlayStatus];
//    
//    //监听音乐缓冲进度
//    [self addPlayLoadTime];
//    
//    //监听音乐播放的进度
//    [self addMusicProgressWithItem:item];
//    
//    //记录当前播放音乐的索引
//    self.currentIndex = [model.Id integerValue];
//    self.currentModel = model;
//    
//    //音乐锁屏信息展示
//    [self setupLockScreenInfo];
//    
//    }

    func playMusic(urlString: String) {
        
        let item = AVPlayerItem(url: URL(string: urlString)!)
        
        self.musicPlayer.replaceCurrentItem(with: item)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

extension UINavigationController {
    
    func makeInvisable() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
    }
    
}
