//
//  SplashScreen.swift
//  Trvlert
//
//  Created by Akshay Sathiya on 11/28/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class SplashScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline:.now() + 1.0, execute: {
            self.performSegue(withIdentifier:"showSplashScreenSegue",sender: self)
        })
    }
    
}
