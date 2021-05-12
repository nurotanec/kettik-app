//
//  ListItem.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct CategoryItem: View {
    let landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.miniImage
                .renderingMode(.original)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(15)
                .overlay(
                    Label("\(landmark.distance) KM", systemImage: "location.fill")
                        .padding(10)
                        .background(Color.black)
                        .opacity(0.8)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding([.trailing, .top], 5), alignment: .topTrailing)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        Text("\(landmark.region), \(landmark.country)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
//                    Image(systemName: "bookmark.fill")
//                        .foregroundColor(landmark.isFavorite ? .orange : .primary)
//                        .padding(.leading)
                }
            }
            .padding([.leading, .bottom], 10)
        }
        .background(Color.white)
        .cornerRadius(20)
//        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: Landmark(id: 34, name: "Kolsay", region: "Almaty", country: "Kazakhstan", description: "", imageName: "kolsay", miniImageName: "miniKolsay", distance: 120, isFavorite: true))
            .previewLayout(.sizeThatFits)
    }
}
