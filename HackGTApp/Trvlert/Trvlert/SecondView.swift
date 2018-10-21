//
//  SecondView.swift
//  Trvlert
//
//  Created by Akshay Sathiya on 10/21/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class SecondView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    var labelText = String()
    var pickerData2 = Array<String>()
    /*
    var latitudes = Array<Double>()
    var longitudes = Array<Double>()
     */
    var times = Array<Int>()
    var totalTime = 0
    
    @IBOutlet weak var lineLabel: UILabel!
    
    
    //@IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var startPicker: UIPickerView!
    
    @IBOutlet weak var endPicker: UIPickerView!
    
    
    @IBAction func button2Pressed(_ sender: Any) {
        
        // get start index
        var start = pickerData2[startPicker.selectedRow(inComponent: 0)]
        var startIndex = pickerData2.firstIndex(of: start)!
        
        //print(start)
        //print(startIndex)
    
        // get end index
        var end = pickerData2[endPicker.selectedRow(inComponent: 0)]
        var endIndex = pickerData2.firstIndex(of: end)!
        
        
        //print(end)
        //print(endIndex)
        /*
        if startIndex > endIndex {
            var temp = 0
            temp = startIndex
            startIndex = endIndex
            endIndex = temp
        }
        
        
        for i in startIndex...endIndex {
            totalTime += times[i]
        }
        */
        
        var thirdController = ThirdView()
        thirdController.countdownTime = abs(times[startIndex] - times[endIndex])
        
    }
    /*
    @IBAction func button2Pressed(_ sender: Any) {
        // get start index
        var start = pickerData2[startPicker.selectedRow(inComponent: 0)]
        var startIndex = pickerData2.firstIndex(of: start)!
        
        // get end index
        var end = pickerData2[endPicker.selectedRow(inComponent: 0)]
        var endIndex = pickerData2.firstIndex(of: end)!
        
        if startIndex > endIndex {
            var temp = 0
            temp = startIndex
            startIndex = endIndex
            endIndex = temp
        }
        
        
        for i in startIndex...endIndex {
            totalTime += times[i]
        }
        
        var thirdController = ThirdView()
        thirdController.countdownTime = totalTime
        
    }
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get start index
        var start = pickerData2[startPicker.selectedRow(inComponent: 0)]
        var startIndex = pickerData2.firstIndex(of: start)!
        
        //print(start)
        //print(startIndex)
        
        // get end index
        var end = pickerData2[endPicker.selectedRow(inComponent: 0)]
        var endIndex = pickerData2.firstIndex(of: end)!
        
        
        //print(end)
        //print(endIndex)
        /*
         if startIndex > endIndex {
         var temp = 0
         temp = startIndex
         startIndex = endIndex
         endIndex = temp
         }
         
         
         for i in startIndex...endIndex {
         totalTime += times[i]
         }
         */
        
        var threeController = segue.destination as! ThirdView
        threeController.countdownTime = abs(times[startIndex] - times[endIndex])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lineLabel.text = labelText
        
        // connect the picker data to the picker
        startPicker.delegate = self
        startPicker.dataSource = self
        
        // connect the picker data to the picker
        endPicker.delegate = self
        endPicker.dataSource = self
        
        if lineLabel.text == "Gold" {
            // Line is Gold
            pickerData2 = ["Doraville", "Chamblee",
            "Brookhaven/Oglethorpe",
            "Lenox", "Lindbergh Center", "Arts Center", "Midtown", "North Avenue", "Civic Center", "Peachtree Center", "Five Points", "Garnett", "West End", "Oakland City", "Lakewood/Ft. McPherson", "East Point", "College Park", "Airport"]
            /*
            latitudes = [33.902957, 33.887808, 33.860349, 33.887808, 33.823107, 33.789315, 33.781355, 33.772499, 33.766706, 33.758000, 33.754060, 33.748514, 33.736036, 33.717270, 33.700561, 33.677442, 33.651684, 33.640997]
            longitudes = [-84.280137, -84.305388, -84.339236, -84.305388, -84.369935, -84.387012, -84.386361, -84.387020, -84.387333, -84.387815, -84.391453, -84.395940, -84.413685, -84.425125, -84.428767, -84.440563, -84.448789, -84.446220]
            */
            times = [0, 3, 7, 10, 13, 17, 19, 20, 22, 23, 24, 27, 29, 31, 33, 36, 39, 41]
        } else if lineLabel.text == "Red" {
            // Line is Red
            // TODO
        } else if lineLabel.text == "Blue" {
            // Line is Blue
            // TODO
        } else {
            // Line is Green
            // TODO
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData2.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData2[row]
    }
    
    
}
