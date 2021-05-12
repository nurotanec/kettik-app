//
//  ContentView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/9/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var selection: Tab = .explore
    
    enum Tab {
        case explore
        case saved
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            MainView()
                .tabItem {
                    Label("Explore", systemImage: "location.fill")
                }
                .tag(Tab.explore)
                .accentColor(.blue)
            SavedView()
                .tabItem {
                    Label("Saved", systemImage: "bookmark.fill")
                }
                .tag(Tab.saved)
            ProfileView()
                .tabItem {
                    Label("Explore", systemImage: "person.fill")
                }
                .tag(Tab.profile)
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
