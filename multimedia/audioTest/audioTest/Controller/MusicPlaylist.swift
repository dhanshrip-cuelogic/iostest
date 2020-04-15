//
//  MusicPlaylist.swift
//  audioTest
//
//  Created by Dhanshri Pawar on 14/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class MusicPlaylist: UITableViewController {
    
    var musicPlaylistModel = MusicPlaylistModel()
    
    var songList : [SongDetails] = []
    var imageToSend : String = ""
    var songToSend : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songList = musicPlaylistModel.musicArray
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "musicCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "musicCell")
        }

        let songInfo = songList[indexPath.row]
        
        cell?.textLabel?.text = songInfo.songName
        cell?.imageView?.image = UIImage(named: songInfo.songImage)

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        imageToSend = songList[indexPath.row].songImage
        songToSend = songList[indexPath.row].songName
        performSegue(withIdentifier: "selectedSong", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let songPage = segue.destination as! ViewController
        songPage.songPic = imageToSend
        songPage.songName = songToSend
       
    }
    
}
