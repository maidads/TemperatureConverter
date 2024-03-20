//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Maida on 2024-03-20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    var tempValues = (-100...100).map{$0}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for index in -100...100 {           // if var tempValues = [Int]()
//            tempValues.append(index)
//        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempValues.count
    }


}

