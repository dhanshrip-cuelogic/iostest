//
//  ViewController.swift
//  audioTest
//
//  Created by Dhanshri Pawar on 14/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!

    @IBOutlet weak var songImage: UIImageView!
    
    var model = ViewControllerModel()
    
    var songPic : String = ""
    var songName : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.prepareSongAndSession()
        model.songName = songName
        songImage.image = UIImage(named: songPic)
        pauseButton.isHidden = true
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    
    @IBAction func playPauseButton(_ sender: UIButton) {
        model.songPlayer.play()
        playButton.isHidden = true
        pauseButton.isHidden = false
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        model.songPlayer.pause()
        playButton.isHidden=false
        pauseButton.isHidden=true
    }
}
