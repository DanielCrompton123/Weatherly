//
//  IconHelper.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import Foundation

struct IconHelper {
    
    static func iconFor(weather id: Int) -> String {
        switch id {
            case 200...232:
                return "cloud.bolt.rain"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...721:
                return "smoke"
            case 731:
                return "sun.dust"
            case 741:
                return "cloud.fog"
            case 751...771:
                return "sun.dust"
            case 781:
                return "tornado"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.sun"
            default:
                return "triangle"
        }
    }
    
}
