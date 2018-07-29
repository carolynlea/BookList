//
//  LargeImageViewController.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class LargeImageViewController: UIViewController, BookControllerProtocol
{
    @IBOutlet weak var largeImageView: UIImageView!
    
    var bookController: BookController?
    var book: Book?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        guard let book = book else {return}
        title = book.title
        
        
        largeImageView.image = UIImage(named: (book.bookCover))
        
        
    }

}
