//
//  ContentView.swift
//  Weatherly
//
//  Created by Daniel Crompton on 08/07/2024.
//

import SwiftUI

struct LocationSearchView: View {
    @Environment(WeatherViewModel.self) private var weatherViewModel
    
    var body: some View {
        @Bindable var weatherViewModel = weatherViewModel
        
        NavigationStack {
            VStack(spacing: 30) {
                
                VStack(spacing: 15) {
                    Text("Welcome to Weatherly")
                        .font(.wLargeTitle)
                    
                    Text("~")
                        .font(.system(size: 32))
                        .fontWeight(.light)
                    
                    Text("Where do you want to find the weather?")
                        .font(.wBody)
                    
                }
                
                HStack {
                    
                    TextField("", text: $weatherViewModel.cityName)
                        .frame(height: 60)
                        .background {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.smog)
                                }
                        }
                        .tint(.fern)
                        .font(.wBody)
                    
                    NavigationLink("OK") {
                        WeatherView()
                    }
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .foregroundStyle(.fern)
                    .padding(10)
                    
                }
                
                Button {
                    // Find location
                } label: {
                    Label("Use my location", systemImage: "location")
                }
                .buttonStyle(PillButton())
                
            }
            .padding(.horizontal, 30)
            .multilineTextAlignment(.center)
            
        }
        
    }
}

#Preview {
    LocationSearchView()
        .environment(WeatherViewModel())
}
