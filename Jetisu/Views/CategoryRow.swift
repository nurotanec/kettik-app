//
//  CategoryRow.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink(destination: DetailView(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                                .padding(.leading)
                        }
                    }
                }
            }
            .frame(height: 255)
        }
        .background(Color.white.opacity(0))
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = [Landmark(id: 40, name: "Kolsay", region: "Almaty", country: "Kazakhstan", description: "Tema mesto", imageName: "kolsay", miniImageName: "miniKolsay", distance: 120, isFavorite: true), Landmark(id: 41, name: "Lake Qayindy", region: "Almaty", country: "Kazakhstan", description: "Tema mesto", imageName: "qayindi", miniImageName: "miniQayindi", distance: 130, isFavorite: true)]
    static var previews: some View {
        CategoryRow(categoryName: "Popular", items: landmarks)
    }
}
