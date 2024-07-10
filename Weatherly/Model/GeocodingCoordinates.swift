//
//  GeocodingCoordinates.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import Foundation


struct GeocodingCoordinates: Decodable {
    let name: String
    let state: String
    let country: String
    let lat: Double
    let lon: Double
}
