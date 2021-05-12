//
//  WeatherView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Weather")
                    Text("23ºC")
                        .font(.title)
                }
                Spacer()
                VStack {
                    Image(systemName: "sun.max")
                        .font(.largeTitle)
                    Text("Sunny")
                        .font(.title)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
