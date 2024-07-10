//
//  WeatherlyApp.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import SwiftUI

@main
struct WeatherlyApp: App {
    @State private var weatherViewModel = WeatherViewModel()
    
    var body: some Scene {
        WindowGroup {
//            LocationSearchView()
//                .environment(weatherViewModel)
            SelectPickerView()
        }
    }
}
