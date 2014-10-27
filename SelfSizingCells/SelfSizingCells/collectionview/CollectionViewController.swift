//
//  CollectionViewController.swift
//  SelfSizingCells
//
//  Created by Nishant Kothary on 10/26/14.
//  Copyright (c) 2014 Nishant Kothary. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        var nib = UINib (nibName: "CollectionViewCell", bundle: nil)
        collectionView?.registerNib(nib, forCellWithReuseIdentifier: reuseIdentifier)
        
        var flowLayout = collectionView?.collectionViewLayout as UICollectionViewFlowLayout
        flowLayout.itemSize = CGSizeMake(collectionView!.bounds.width, 200)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellContent.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as CollectionViewCell
        
        cell.labelText = "\(indexPath.row). " + cellContent[indexPath.row]
        
        return cell
    }

    @IBAction func dismissTapped(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func toggleTapped(sender: UIBarButtonItem) {
        var flowLayout = collectionView?.collectionViewLayout as UICollectionViewFlowLayout
        collectionView?.setContentOffset(CGPointZero, animated: false)
        if let s = sender.title {
            switch(s) {
            case "itemSize (screenWidth, 200)":
                // change layout to estimatedSize
                flowLayout.estimatedItemSize = CGSizeMake(collectionView!.bounds.width, 200)
                collectionView?.reloadData()
                // update button text
                sender.title = "estimatedItemSize (screenWidth, 200)"
            case "estimatedItemSize (screenWidth, 200)":
                // change layout to estimatedSize
                flowLayout.estimatedItemSize = CGSizeMake(collectionView!.bounds.width, 10)
                collectionView?.reloadData()
                // update button text
                sender.title = "estimatedItemSize (screenWidth, 10)"
            default:
                // change layout to itemSize
                flowLayout.estimatedItemSize = CGSizeZero
                flowLayout.itemSize = CGSizeMake(collectionView!.bounds.width, 200)
                collectionView?.reloadData()
                // update button text
                sender.title = "itemSize (screenWidth, 200)"
            }
        }
    }
}
