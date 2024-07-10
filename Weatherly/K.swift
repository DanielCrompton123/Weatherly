//
//  K.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import Foundation

/// Constants
struct K {
    static let apiKey = Bundle.main.infoDictionary!["API_KEY"] as! String
    static let apiUrl = "https://api.openweathermap.org"
    static var weatherEndpoint: String { "\(K.apiUrl)/data/2.5/forecast" }
    static var geocodingEndpoint: String { "\(K.apiUrl)/geo/1.0/direct" }
    static var imageApiUrl = "https://en.wikipedia.org/w/api.php"
}
