//
//  ViewController.swift
//  call_views_from_classes
//
//  Created by Marquavious on 12/11/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    /*
     This ↑ connects the empty UIView from our StoryBoard.
     The mainView can be any UIView we want to show it on
     We could make the view programaticly or connect the view from the
     story board (as we did in this example)
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here is the initilization of our CutomView. 
        // Here we set the parameters we required in our custom view class
        _ = CustomView(masterView: mainView, color: .yellow, textToShow:"Custom Text")
    }
}

