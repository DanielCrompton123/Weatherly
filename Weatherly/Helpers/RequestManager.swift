//
//  RequestManager.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import Foundation


struct RequestManager {
    
    // Make a get request using T as a generic type to decode to. i.e. if `T` is `Weather` the decoder will decode to `Weather`
    static func get<T: Decodable>(
        _ url: String,
        parameters: [String:String] = [:],
        decodeTo: T.Type
    ) async throws -> T {
        
        // 1. Make URL
        guard let url = URL(string: "\(url)?\(parameters.urlQuery())") else { throw URLError(.badURL) }
        
        // 2. Make request
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // 3. Decode data
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
    }
}



extension Dictionary where Key == String, Value == String {
    func urlQuery() -> String {
        var s = ""
        for key in self.keys {
            s += key + "=" + self[key]! + "&"
        }
        return s
    }
}
