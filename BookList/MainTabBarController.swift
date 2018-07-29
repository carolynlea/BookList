//
//  MainTabBarController.swift
//  BookList
//
//  Created by Carolyn Lea on 7/28/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController
{
    let bookController = BookController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        passBookControllerToChildViewControllers()
    }
    
    func passBookControllerToChildViewControllers()
    {
        for childVC in childViewControllers
        {
            
            if let navigationController = childVC as? UINavigationController
            {
                guard let vc = navigationController.childViewControllers.first as? BookControllerProtocol else {return}
                vc.bookController = bookController
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
