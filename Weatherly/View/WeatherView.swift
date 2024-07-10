//
//  WeatherView.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import SwiftUI

struct WeatherView: View {
    @Environment(WeatherViewModel.self) private var weatherViewModel
    
    var body: some View {
        
        VStack(spacing: 0) {
            if let geocoding = weatherViewModel.geocodingData,
               let currentWeather = weatherViewModel.currentWeather,
               let weather = currentWeather.weather.first {
                // TOP IMAGE WITH THE CITY NAME OVERLAYED
                GeometryReader { geom in
                    ZStack(alignment: .top) {
                        AsyncImage(url: weatherViewModel.cityImageUrl) { image in
                            GeometryReader { geometry in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: geometry.size.height)
                                    .mask(
                                        Rectangle()
                                            .fill(LinearGradient(colors: [.black.opacity(0.35), .black.opacity(0)], startPoint: .center, endPoint: .bottom))
                                            .ignoresSafeArea()
                                    )
                            }
                        } placeholder: {
                            Color.smog
                                .opacity(0.2)
                                .overlay {
                                    Image(systemName: "camera.fill")
                                        .foregroundStyle(.smog)
                                        .opacity(0.075)
                                        .font(.system(size: 140))
                                }
                        }
                        .ignoresSafeArea()
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("The weather in...")
                                    .font(.wCaption)
                                    .foregroundStyle(.smog)
                                    .italic()
                                Text(geocoding.name)
                                    .font(.wTitle)
                                    .foregroundStyle(.violentIndulgence)
                                Text(geocoding.country + ", " + geocoding.state)
                                    .font(.wCaption)
                                    .foregroundStyle(.smog)
                                    .italic()
                            }
                            
                            Spacer()
                            
                            Image(systemName: IconHelper.iconFor(weather: weather.id))
                                .font(.system(size: 84, weight: .ultraLight))
                                .foregroundStyle(.smog)
                        }
                        .padding(40)
                    }
                    .frame(height: geom.size.height)
                }
                // BOTTOM SECTION OF DATA
                HStack(alignment: .top, spacing: 20) {
                    // SECTION ON LEFT
                    VStack(alignment: .leading, spacing: 30) {
                        VStack(alignment: .leading) {
                            // TEXT BEING SHRUNK
                            Text(DateHelper.readableDate(for: currentWeather.dateTime))
                                .font(.wHeadline)
                                .foregroundStyle(.fern)
                                .minimumScaleFactor(0.2)
                            // TEXT BEING SHRUNK
                            Text(DateHelper.readableTime(for: currentWeather.dateTime))
                                .font(.wHeadline)
                                .foregroundStyle(.fern)
                                .minimumScaleFactor(0.2)
                            
                            HStack(alignment: .top, spacing: 0) {
                                Text(String(Int(currentWeather.main.temp)))
                                    .font(.wHugeText)
                                Text("˚C")
                                    .font(.wHeadline)
                                    .offset(y: 10)
                            }
                            .foregroundStyle(.smog)
                            
                            // TEXT BEING TRUNCATED
                            Text(weather.main)
                                .textCase(.uppercase)
                                .fontWeight(.bold)
                                .foregroundStyle(.smog)
                        }
                        // SECTION ON RIGHT
                        Group {
                            Label("Feels like \(String(format: "%.1f", currentWeather.main.feelsLike))˚C", systemImage: "thermometer.transmission")
                            Label("Humidity \(String(format: "%.1f", currentWeather.main.humidity))%", systemImage: "humidity")
                            Label("Clouds \(String(format: "%.1f", currentWeather.clouds.all))%", systemImage: "cloud")
                            Label("Wind speed \(String(format: "%.1f", currentWeather.wind.speed)) m/s", systemImage: "wind")
                            Label("Visibility \(String(format: "%.1f", currentWeather.wind.speed)) m/s", systemImage: "eye")
                        }
                        .font(.wSmallCaption)
                        
                    }
                    
                    Spacer()
                    
                    if let weatherList = weatherViewModel.weather?.list {
                        VStack(alignment: .trailing, spacing: 30) {
                            ForEach(DateHelper.datesWithUniqueDays(for: weatherList.map(\.dateTime)), id: \.self) { date in
                                Text(DateHelper.dayNameFor(date: date))
                                    .textCase(.uppercase)
                                    .fontWeight(.bold)
                            }
                        }
                        .foregroundStyle(.violentIndulgence)
                    }
                    
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
            }
        }
        .font(.wBody)
        .task {
            do {
                try await weatherViewModel.getWeather()
            } catch {
                print("ERROR FETCHING WEATHER: \(error)")
            }
        }
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    let v = WeatherViewModel()
    v.geocodingData = GeocodingCoordinates(name: "Blackpool", state: "England", country: "GB", lat: 53, lon: -3.05)
    v.currentWeather = Weather(dt: 1720548921, main: .init(temp: 19, feelsLike: 18.90, seaLevel: 1009, humidity: 38), weather: [.init(id: 500, main: "Chucking it down")], clouds: .init(all: 50), wind: .init(speed: 20), visibility: 10_000)
    v.weather = sampleWeather()
    v.cityImageUrl = URL(string: "https://picsum.photos/200/300")
    
    return WeatherView()
        .environment(v)
}
