//
//  ReviewsView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct ReviewsView: View {
    var body: some View {
        List {
            VStack(alignment: .leading) {
                Text("Aidar:")
                    .font(.headline)
                Text("vawe nice mesto π")
                    .font(.subheadline)
            }
            VStack(alignment: .leading) {
                Text("Al-Farabi:")
                    .font(.headline)
                Text("Shashlyki tema π")
                    .font(.subheadline)
            }
            VStack(alignment: .leading) {
                Text("Aiman:")
                    .font(.headline)
                Text("ochen' krasivo! βΊοΈ")
                    .font(.subheadline)
            }
        }
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView()
    }
}
