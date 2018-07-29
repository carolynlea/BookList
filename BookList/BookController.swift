//
//  BookController.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation
import UIKit

class BookController
{
    //var books: [Book] = []
    var book: Book?
    
//    func createBook(title: String, bookCover: UIImage, quote: String)
//    {
//        let book = Book(title: title, bookCover: bookCover, quote: quote)
//        books.append(book)
//    }
    
    var books = [Book(title: "The Mysterious Affair at Styles", bookCover: "placeholder", quote: "Instinct is a marvelous thing. It can neither be explained nor ignored."),
                 Book(title: "Cards on the Table", bookCover: "placeholder", quote: "Oh, my dear friend, it is impossible not to give oneself away - unless one never opens one's mouth! Speech is the deadliest of revealers."),
                 Book(title: "Murder in Mesopotamia", bookCover: "placeholder", quote: "Loyalty it is a pestilential thing in crime. Again and again it obscures the truth."),
                 Book(title: "Murder of Roger Ackroyd", bookCover: "placeholder", quote: "Women observe subconsciously a thousand little details, without knowing that they are doing so. Their subconscious mind adds these little things together—and they call the result intuition."),
                 Book(title: "Hercule Poirot's Christmas", bookCover: "placeholder", quote: "Hercule Poirot stared hard at Superintendent Sugden’s moustache. Its luxuriance seemed to fascinate him.")
    ]
}