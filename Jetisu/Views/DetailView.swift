//
//  DetailView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/4/21.
//

import SwiftUI
import MapKit

// MARK: TO-DO LIST
// TO-DO: Title
// TO-DO: Title
// TO-DO: Title
// TO-DO: Title
// TO-DO: Title
// TO-DO: Title
// TO-DO: Title

struct MenuActions {
    let text: String
    let icon: String
}

// MARK: VIEW
struct DetailView: View {
    @State private var showMap = false
    @State private var showHotels = false
    @State private var showTours = false
    @State private var showReviews = false
    
    let landmark: Landmark
    
    @State var bookmarked = false
    @State var selection = 0
    
    var body: some View {
        VStack {
            TabView {
                PageView(imageName: landmark.imageName)
                PageView(imageName: "charyn2")
                PageView(imageName: "charyn3")
                PageView(imageName: "charyn4")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 200)
            
            VStack {
                Picker("", selection: $selection) {
                    Text("Info").tag(0)
                    Text("Tours").tag(1)
                    Text("Customize").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.vertical, 5)
                
                switch selection {
                case 0:
                    InfoView()
                        .padding(.bottom)
                case 1:
                    ToursView()
                case 2:
                    CustomizeView()
                default:
                    EmptyView()
                }
            }
            .cornerRadius(15)
            .padding(.horizontal)
        }
        .navigationBarTitle(landmark.name)
        .navigationBarItems(trailing: Button(action: {
            if bookmarked {
                bookmarked = false
            } else {
                bookmarked = true
            }
        }){
            Image(systemName: bookmarked ? "bookmark.fill" : "bookmark")
                .foregroundColor(.orange)
        })
    }
}

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.icon
            configuration.title
        }
    }
}

// MARK: PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(landmark: Landmark(id: 0, name: "Kolsay", region: "Almaty oblysy", country: "Kazakhstan", description: "pzdc vai vai mesto", imageName: "kolsay", miniImageName: "miniKolsay", distance: 120, isFavorite: true))
        }
//        .preferredColorScheme(.dark)
    }
}

