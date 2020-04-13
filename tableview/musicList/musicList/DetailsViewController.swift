//
//  DetailsViewController.swift
//  musicList
//
//  Created by Dhanshri Pawar on 28/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    var receivedImage = UIImage(named: "music2")
      var receivedMusicName : String = ""
      var receivedSingerName : String = ""
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var singerName: UILabel!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = receivedImage
        songName.text = receivedMusicName
        singerName.text = receivedSingerName

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
