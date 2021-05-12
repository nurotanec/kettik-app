//
//  CustomizeView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/9/21.
//

import SwiftUI

struct CustomizeView: View {
    @State var yandex = false
    @State var inDriver = false
    @State var bus = false
    @State var ownCar = false
    
    @State var hotel = false
    @State var hostel = false
    @State var yurt = false
    @State var noHouse = false
    
    var body: some View {
        let transportCost =
            (yandex ? 40 : 0) +
            (inDriver ? 35 : 0) +
            (bus ? 20 : 0) +
            (ownCar ? 25 : 0)
        
        let housingCost =
            (hotel ? 150 : 0) +
            (hostel ? 80 : 0) +
            (yurt ? 100 : 0) +
            (noHouse ? 10 : 0)
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Make your own tour")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                
                Text("Transport")
                    .font(.title)
                    .bold()
            
                VStack(alignment: .leading) {
                    Toggle("Yandex", isOn: $yandex)
                    Toggle("InDriver", isOn: $inDriver)
                    Toggle("Bus", isOn: $bus)
                    Toggle("I have my own car", isOn: $ownCar)
                    
                    Text("Price: \(transportCost)$")
                        .font(.title2)
                }
                .padding(.bottom)
                
                Text("Housing")
                    .font(.title)
                    .bold()
            
                VStack(alignment: .leading) {
                    Toggle("Hotel", isOn: $hotel)
                    Toggle("Hostel", isOn: $hostel)
                    Toggle("Yurt", isOn: $yurt)
                    Toggle("I do not need housing", isOn: $noHouse)
                    
                    Text("Price: \(housingCost)$")
                        .font(.title2)
                }
                .padding(.bottom)
                
                Text("Total price: \(transportCost + housingCost)$")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
            }
        }
    }
}

struct CustomizeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeView()
    }
}
