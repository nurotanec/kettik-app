//
//  ContentView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/4/21.
//

import SwiftUI
import MapKit

struct MainView: View {
    private var categories = ["Popular", "Should visit in Almaty Region"]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search", text: .constant(""))
                    Image(systemName: "mic.fill")
                        .foregroundColor(.gray)
                }
                .padding(10)
                .background(Color.init(white: 0.95))
                .cornerRadius(10)
                .padding(.horizontal)
                
                ScrollView {
                    ForEach(0..<2) { index in
                        CategoryRow(categoryName: categories[index], items: landmarks)
                            .listRowInsets(EdgeInsets())
                            .background(Color.gray.opacity(0))
                    }
                    .padding(.vertical)
                }
                .listStyle(InsetListStyle())
                .background(Color.gray.opacity(0.1))
                .navigationTitle("Explore")
                .navigationBarItems(trailing: Button("Location", action: {}))
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView {
    var landmarks: [Landmark] {
        [
            Landmark(id: 0, name: "Charynskii kanyon", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "charyn", miniImageName: "miniCharyn", distance: 70, isFavorite: true),
            Landmark(id: 1, name: "Kolsay", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "kolsay", miniImageName: "miniKolsay", distance: 120, isFavorite: true),
            Landmark(id: 2, name: "Qayindi", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "qayindi", miniImageName: "miniQayindi", distance: 130, isFavorite: true),
            Landmark(id: 3, name: "Chernyi Charynskii kanyon", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "blackCharyn", miniImageName: "miniBlackCharyn", distance: 70, isFavorite: true),
            Landmark(id: 4, name: "Poyuwii Barkhan", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "barkhan", miniImageName: "miniBarkhan", distance: 70, isFavorite: true),
            Landmark(id: 5, name: "Gora Aqtau", region: "Almaty", country: "Kazakhstan", description: "Kolsay Lakes National Park is often referred to as \"Pearls of Tien Shan\", the park's main feature are the Kolsay Lakes located between the Raiymbek District and Talgar District of Almaty Region. The scenic Lake Kaindy is also within the park. The park boundary is 120 kilometres (75 mi) southeast of Almaty. Lakes of landslide-tectonic origin, approximately formed in 1887 and 1911 on the Kaindy and Kolsay rivers.", imageName: "aqtau", miniImageName: "miniAqtau", distance: 70, isFavorite: true),
            Landmark(id: 6, name: "Gorod kochevnikov", region: "Almaty", country: "Kazakhstan", description: "bad place", imageName: "medina", miniImageName: "miniMedina", distance: 70, isFavorite: true)
        ]
    }
}

