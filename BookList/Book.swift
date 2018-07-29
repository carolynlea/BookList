//
//  Book.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation
import UIKit

class Book
{
    var title: String
    var bookCover: String
    var quote: String
    
    init(title: String, bookCover: String, quote: String) {
        self.title = title
        self.bookCover = bookCover
        self.quote = quote
    }
    
}
