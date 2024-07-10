//
//  Weather.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import Foundation

struct WeatherList: Decodable {
    var list: [Weather]
}


struct Weather: Decodable, Hashable {
    let dt: Int
    var dateTime: Date {
        Date(timeIntervalSince1970: TimeInterval(dt))
    }
    let main: Main
    let weather: [WeatherCondition]
    let clouds: Clouds
    let wind: Wind
    let visibility: Int
    
    
    struct Main: Decodable, Hashable {
        let temp: Double
        let feelsLike: Double
        let seaLevel: Int
        let humidity: Double
    }
    
    
    struct WeatherCondition: Decodable, Hashable {
        let id: Int
        let main: String
    }
    
    
    struct Clouds: Decodable, Hashable {
        let all: Int
    }
    
    
    struct Wind: Decodable, Hashable {
        let speed: Double
    }
    
}
