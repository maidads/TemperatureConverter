//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Maida on 2024-03-20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }


}

