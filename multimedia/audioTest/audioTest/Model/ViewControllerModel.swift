//
//  ViewControllerModel.swift
//  audioTest
//
//  Created by Dhanshri Pawar on 15/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import Foundation
import AVFoundation

class ViewControllerModel {
    
    var songPlayer = AVAudioPlayer()
    
    var songName = ""
    
    func prepareSongAndSession() {
        do {
            
            let path = Bundle.main.path(forResource: songName, ofType: "m4a")
            
            songPlayer = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath: path!))
            songPlayer.prepareToPlay()
            
            
            let audioSession = AVAudioSession()
            do {
                try audioSession.setCategory(.playback)
            }catch {
                print(error)
            }
        
        }catch {
            print(error)
        }
    }
}

