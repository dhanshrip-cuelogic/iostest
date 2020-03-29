//
//  CollectionViewCell.swift
//  musicList
//
//  Created by Dhanshri Pawar on 28/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var singerName: UILabel!

    
    public func configure(model : Model) {
        songImage.image = model.image
        songName.text = model.musicName
        singerName.text = model.singerName
    }
    
}
