//
//  WeatherModel.swift
//  Clima
//
//  Created by 이유진 on 10/10/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
            // thunderstrom
        case 200...232:
            return "cloud.bolt"
            // drizzle
        case 300...321:
            return "cloud.drizzle"
            // rain
        case 500...531:
            return "cloud.rain"
            // snow
        case 600...622:
            return "cloud.snow"
            // fog
        case 701...781:
            return "cloud.fog"
            // clear
        case 800:
            return "sun.max"
            // clouds
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
