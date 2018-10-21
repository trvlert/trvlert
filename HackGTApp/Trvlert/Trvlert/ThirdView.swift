//
//  ThirdView.swift
//  Trvlert
//
//  Created by Akshay Sathiya on 10/21/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class ThirdView: UIViewController {
    
    
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    var countdownTime = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        thirdLabel.text = "Your trip will take " + String(countdownTime) + " minutes"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
