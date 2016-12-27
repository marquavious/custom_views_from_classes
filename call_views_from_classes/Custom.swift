//
//  Custom.swift
//  call_views_from_classes
//
//  Created by Marquavious on 12/11/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    // Here, masterView is the view we're going to fill up
    // and base our constraints on.
    var masterView: UIView!
    
    // Here, textToShow is the custom string we are going to show on the view.
    var textToShow: String!
    
    init(masterView: UIView, color: UIColor, textToShow: String) { //Custom initializer
        /*
         Here, we ask the user to set the masterView, the backgroundColor of the CustomView
         and a special string to represent any other UIElement you could add to this view.
         */
        
        // ---------------------------------------------------- //
        
        /*
         Notice how we dont ask the user to create a frame?
         We automaticly set it to CGRect.zero because the
         constraints will automatically override it.
        */
        super.init(frame: CGRect.zero)
        self.masterView = masterView // Sets the masterView variable to any UIView we want to
        masterView.addSubview(self) // Adds CustomView to the mainView
        self.backgroundColor = color // Sets background color
        self.textToShow = textToShow  // Sets custom text
        self.addSubview(sampleTextLabel) // Adds the text view to the masterView
        sampleTextLabel.text = textToShow  // Sets the sampleTextLabel string
        self.setUpConstraints() // Finnaly, sets up the constraints to the masterView we specified earlier
    }
    
    /*
     When creating a custom view, you will have to use this required init:
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
     
    However, this init above won't work correctly because you will have to add more information.
    */
    
    // Use this init below instead
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // Programmatically create a UILabel
    let sampleTextLabel:UILabel = {
        let sampleTextLabel = UILabel()
        sampleTextLabel.translatesAutoresizingMaskIntoConstraints = false // important for constraints
        return sampleTextLabel
    }()
    
    // Sets up all constraints
    func setUpConstraints(){
        
        // Sets up CustomView constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: masterView.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: masterView.bottomAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: masterView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: masterView.trailingAnchor).isActive = true
        
        // Constraints the sampleTextLabel to the center of the mainView
        sampleTextLabel.centerXAnchor.constraint(equalTo: masterView.centerXAnchor).isActive = true
        sampleTextLabel.centerYAnchor.constraint(equalTo: masterView.centerYAnchor).isActive = true
    }
}
