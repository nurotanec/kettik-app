//
//  ToursView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct ToursView: View {
    @State var tourOne = false
    @State var tourTwo = false
    @State var tourThree = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Upcoming tours")
                        .font(.title)
                        .foregroundColor(.secondary)
                
                    VStack(alignment: .leading) {
                        Text("Tour 1")
                            .font(.title)
                            .padding(.vertical)
                        HStack {
                            Text("Every Synday")
                            Text("10:00 - 15:00")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Available seats")
                            Text("11/15")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Price")
                            Text("$150")
                                .bold()
                        }.padding(.bottom, 5)
                        Button(action: {
                            tourOne.toggle()
                        }) {
                            HStack {
                                Spacer()
                                Text(tourOne ? "Booked" : "Book now")
                                    .foregroundColor(tourOne ? .orange : .white)
                                Spacer()
                            }
                            .frame(height: 60, alignment: .leading)
                            .background(tourOne ? Color.white : Color.orange)
                            .cornerRadius(20)
                            .border(Color.orange)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Tour 2")
                            .font(.title)
                            .padding(.vertical)
                        HStack {
                            Text("Tue, Thu, Sat")
                            Text("08:00 - 14:00")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Available seats")
                            Text("2/10")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Price")
                            Text("$200")
                                .bold()
                        }.padding(.bottom, 5)
                        Button(action: {
                            tourTwo.toggle()
                        }) {
                            HStack {
                                Spacer()
                                Text(tourTwo ? "Booked" : "Book now")
                                    .foregroundColor(tourTwo ? .orange : .white)
                                Spacer()
                            }
                            .frame(height: 60, alignment: .leading)
                            .background(tourTwo ? Color.white : Color.orange)
                            .cornerRadius(20)
                            .border(Color.orange)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Tour 3")
                            .font(.title)
                            .padding(.vertical)
                        HStack {
                            Text("As seats are occupied")
                            Text("06:00 - 20:00")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Available seats")
                            Text("1/10")
                                .bold()
                        }.padding(.bottom, 5)
                        HStack {
                            Text("Price")
                            Text("$50")
                                .bold()
                        }.padding(.bottom, 5)
                        Button(action: {
                            tourThree.toggle()
                        }) {
                            HStack {
                                Spacer()
                                Text(tourThree ? "Booked" : "Book now")
                                    .foregroundColor(tourThree ? .orange : .white)
                                Spacer()
                            }
                            .frame(height: 60, alignment: .leading)
                            .background(tourThree ? Color.white : Color.orange)
                            .cornerRadius(20)
                            .border(Color.orange)
                        }
                    }
                }
                Button("Filter", action: {})
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
