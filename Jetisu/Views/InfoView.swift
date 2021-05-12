//
//  InfoView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/9/21.
//

import SwiftUI
import MapKit

struct InfoView: View {
    @State var showReviews = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Fun facts")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(.top)
                
                ForEach(0..<3) { _ in
                    HStack {
                        Text("80 km")
                            .bold()
                            .font(.title)
                        Text("length of the canyon")
                    }
                    .padding(.top)
                }
                .padding(.bottom)
            
                Text("Map")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                MapView()
                    .padding(.bottom)
                
                Text("Weather")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                
                HStack {
                    Image(systemName: "sun.max.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                    VStack {
                        Text("Sunny")
                        Text("+30 C")
                            .font(.headline)
                    }
                }
                .padding(.bottom)
                
                Text("Feedback")
                    .font(.title)
                    .foregroundColor(.secondary)
                
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                            Image(systemName: "star.fill")
                                .foregroundColor(.gray)
                            Image(systemName: "star.fill")
                                .foregroundColor(.gray)
                            Image(systemName: "star.fill")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                        Text("2.0 / 5.0")
                    }
                    .padding(.vertical)
                    Text("Almas Bolatbek")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 5)
                    Text("Great place! Loved it!")
                        .padding(.bottom, 5)
                    Button("View all comments", action: {
                        showReviews = true
                    })
                    .sheet(isPresented: $showReviews, content: {
                        NavigationView {
                            ReviewsView()
                                .navigationBarTitle("Reviews", displayMode: .inline)
                                .navigationBarItems(trailing: Button("Close", action: {
                                    showReviews = false
                                }))
                        }
                    })
                }
            }
        }
        .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
