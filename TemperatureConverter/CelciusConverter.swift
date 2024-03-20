//
//  CelciusConverter.swift
//  TemperatureConverter
//
//  Created by Maida on 2024-03-20.
//

import Foundation

class CelciusConverter {
    
    func  degreesFahrenheit(degreesCelcius : Int) -> Int {
        let tempF = 1.8 * Double(degreesCelcius) + 32
        
        return Int(round(tempF))
    }
    
    
    
}
