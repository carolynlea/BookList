//
//  MyCollectionViewController.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

private let reuseIdentifier = "BookImageCell"

class MyCollectionViewController: UICollectionViewController, BookControllerProtocol
{

    var bookController: BookController?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "My Bookcover Collection"
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ToBigPicture"
        {
            guard let bigImageVC = segue.destination as? LargeImageViewController,
                let cell = sender as! BookImageCollectionViewCell?,
                let indexPath = collectionView?.indexPath(for: cell) else {return}
            
            bigImageVC.bookController = bookController
            bigImageVC.book = bookController?.books[indexPath.row]
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return bookController?.books.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BookImageCollectionViewCell
    
        let book = bookController?.books[indexPath.row]
        cell.bookCoverImageView?.image = UIImage(named: (book?.bookCover)!)
        cell.titleLabel?.text = book?.title
        
    
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
