//
//  FriendsPhotoViewController.swift
//  VKClient
//
//  Created by Ulan Beishenkulov on 19/2/23.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendsPhotoViewController: UICollectionViewController {
    
    let photos = [
    Friends(name: "ACE", image: UIImage(named: "aceImage")),
    Friends(name: "BANDIT", image: UIImage(named: "banditImage")),
    Friends(name: "ECHO", image: UIImage(named: "echoImage")),
    Friends(name: "FBI", image: UIImage(named: "fbiImae")),
    Friends(name: "FUZE", image: UIImage(named: "fuzeImage")),
    Friends(name: "GAMES", image: UIImage(named: "gamesImage")),
    Friends(name: "MAIN", image: UIImage(named: "mainPageImage")),
    Friends(name: "S.A.S", image: UIImage(named: "sasteamImage")),
    Friends(name: "SLEDGE", image: UIImage(named: "sledgeImage")),
    Friends(name: "SMOKE", image: UIImage(named: "smokeImage")),
    Friends(name: "TEAM", image: UIImage(named: "teamImage")),
    Friends(name: "THERMITE", image: UIImage(named: "thermiteImage"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoCollectionViewCell else {
            preconditionFailure("ERROR")
        }
    
        cell.avatar.image = photos[indexPath.row].image
        cell.name.text = photos[indexPath.row].name
    
        return cell
    }

    // MARK: UICollectionViewDelegate

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
