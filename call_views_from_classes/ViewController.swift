//
//  ViewController.swift
//  call_views_from_classes
//
//  Created by Marquavious on 12/11/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This connects the empty UIView from our StoryBoard
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here is the initilization of our CutomView. 
        // Here we set the parameters we required in our custom view class
        _ = CustomView(masterView: mainView, color: .yellow, textToShow:"Custom Text")
    }
}

