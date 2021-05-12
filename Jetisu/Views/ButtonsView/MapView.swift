//
//  MapView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI
import MapKit

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.350981, longitude: 79.080075),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    private var pointsOfInterest = [
        AnnotatedItem(name: "Kolsay Lake", coordinate: .init(latitude: 43.350981, longitude: 79.080075))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
            MapMarker(coordinate: item.coordinate, tint: .green)
        }
        .frame(height: 200)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
