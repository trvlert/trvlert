//
//  ViewController.swift
//  Trvlert
//
//  Created by Akshay Sathiya on 10/21/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var linePicker: UIPickerView!
    
    @IBOutlet weak var selectLineButton: UIButton!
    
    // picker data
    let pickerData = ["Gold", "Red", "Blue", "Green"]
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        var secondController = SecondView()
        
        secondController.labelText = pickerData[linePicker.selectedRow(inComponent: 0)]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondController = segue.destination as! SecondView
        
        secondController.labelText = pickerData[linePicker.selectedRow(inComponent: 0)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // connect the picker data to the picker
        linePicker.delegate = self
        linePicker.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
}
