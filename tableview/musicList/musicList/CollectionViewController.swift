//
//  CollectionViewController.swift
//  musicList
//
//  Created by Dhanshri Pawar on 28/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

/*
 In this project, it shows a list of songs with its information like its image, song name and singer name.
 We can slide horizontally to see all the songs.
 On selection of any one cell it will display its information on next page.
 */


import UIKit

private let reuseIdentifier = "Cell"



struct Model {
    var image : UIImage
    var musicName : String
    var singerName : String
}

var musicCollection : [Model] = [ Model(image: UIImage(named: "music")!,musicName: "Song 1", singerName: "gjb"),
                                  Model(image: UIImage(named: "music2")!,musicName: "Song 2", singerName: "Xyz"),
                                  Model(image: UIImage(named: "music3")!,musicName: "Song 3", singerName: "Khjf"),
                                  Model(image: UIImage(named: "music4")!,musicName: "Song 4", singerName: "Ojdhb"),
                                  Model(image: UIImage(named: "music")!,musicName: "Song 5", singerName: "kugv"),
                                  Model(image: UIImage(named: "music2")!,musicName: "Song 6", singerName: "Ojdhb"),
                                  Model(image: UIImage(named: "music3")!,musicName: "Song 7", singerName: "Ojdhb")
                                ]

var songDetails : Model = Model(image: UIImage(named: "music")!,musicName: "Song 1",singerName: "gjb")

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let flow =  collectionView?.collectionViewLayout as? UICollectionViewFlowLayout{
//              flow.scrollDirection = .horizontal
//        }

        
    }
    
}

// MARK: UICollectionViewDataSource

extension CollectionViewController {
        
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return musicCollection.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        cell.configure(model: musicCollection[indexPath.row])
        
        return cell
    }
        
}



    /*

 // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDelegate

extension CollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        songDetails = musicCollection[indexPath.row]
        print(songDetails.musicName)
        print(songDetails.singerName)
       
        performSegue(withIdentifier: "DisplayPage", sender: self)
            
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         let detailsPage = segue.destination as! DetailsViewController
        detailsPage.receivedImage = songDetails.image
        detailsPage.receivedMusicName = songDetails.musicName
        detailsPage.receivedSingerName = songDetails.singerName

        }
    
    
    
    /*
       // Uncomment this method to specify if the specified item should be highlighted during tracking
       override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
           return true
       }
       */

     /*
       // Uncomment this method to specify if the specified item should be selected
       override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
           return true
       }

     */
       /*
       // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
       override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
           return false
       }

       override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
           return false
       }

       override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
       
       }
       */
    
}
   
