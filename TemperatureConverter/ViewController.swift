//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Maida on 2024-03-20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var celciusPickerView: UIPickerView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    var tempValues = (-100...100).reversed().map{$0}
    let converter = CelciusConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for index in -100...100 {           // if var tempValues = [Int]()
//            tempValues.append(index)
//        }
        
        let defaultRow = tempValues.count / 2
        celciusPickerView.selectRow(defaultRow, inComponent: 0, animated: false)
        pickerView(celciusPickerView, didSelectRow: defaultRow, inComponent: 0)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempValues.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tempValues[row]) ºC"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print("\(row) : \(tempValues[row])")
        
        let tempC = tempValues[row]
        let tempF = converter.degreesFahrenheit(degreesCelcius: tempC)
        
        temperatureLabel.text = "\(tempF) ºF"
    }

}

