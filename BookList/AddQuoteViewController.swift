//
//  AddQuoteViewController.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class AddQuoteViewController: UIViewController, BookControllerProtocol
{
    @IBOutlet weak var quoteTextView: UITextView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    var bookController: BookController?
    var book: Book?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel.text = book?.title
        cancelButton.isHidden = true
        clearButton.isHidden = true
        saveButton.isHidden = true
        quoteTextView.isUserInteractionEnabled = false 
        updateViews()
    }

    @IBAction func close(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any)
    {
        quoteTextView.resignFirstResponder()
    }
    
    @IBAction func clear(_ sender: Any)
    {
        quoteTextView.text = ""
    }
    
    @IBAction func save(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    private func updateViews()
    {
        guard let book = book else {
            //titleLabel.text = "Add a Quote"
            return
        }
        
        //titleLabel.text = "Edit Quote"
        
        quoteTextView.text = book.quote
    }
    
}
