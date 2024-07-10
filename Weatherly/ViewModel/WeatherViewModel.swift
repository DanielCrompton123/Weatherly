//
//  WeatherViewModel.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import Foundation
import CoreLocation


@Observable
class WeatherViewModel {
    
    var weather: WeatherList?
    var geocodingData: GeocodingCoordinates?
    var cityName = ""
    var cityImageUrl: URL?
    var currentWeather: Weather?
    
    
    // Get weather data for the given location
    func getWeather() async throws {
        try await getCoordinates()
        
        self.weather = try await RequestManager.get(K.apiUrl,
                                                    parameters: ["appid": K.apiKey,
                                                                 "lat": String(geocodingData?.lat ?? 0.0),
                                                                 "lon": String(geocodingData?.lon ?? 0.0)],
                                                    decodeTo: WeatherList.self)
        
        try await getCityImage()
    }
    
    
    // Get latutude and longitude for a given city name
    private func getCoordinates() async throws {
        geocodingData = try await RequestManager.get(K.geocodingEndpoint,
                           parameters: ["q": cityName, "appid": K.apiKey],
                           decodeTo: GeocodingCoordinates.self)
    }
    
    
    // Get the user's location and throw an error if it fails
    func getUserLocation() throws {
        
    }
    
    
    func getCityImage() async throws {
        // Get wikipedia page images for the city name
        guard let cityName = geocodingData?.name else { return }
        
        let wikiImage = try await RequestManager.get(K.imageApiUrl,
                           parameters: ["action": "query", // Query wikipedia API
                                        "format": "json",  // Recieve JSON
                                        "titles": cityName,  // Search for city
                                        "prop": "pageimages",  // Retrieve page images for the wikipedia page
                                        "pithumbsize": "500"], // Image size is 500px
                                     decodeTo: WikiImage.self)
        cityImageUrl = URL(string: wikiImage.source)
    }
    
    
}
