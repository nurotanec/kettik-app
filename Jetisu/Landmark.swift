//
//  Landmark.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/5/21.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Identifiable {
    var id: Int
    var name: String
    var region: String
    var country: String
    var description: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var miniImageName: String
    var miniImage: Image {
        Image(miniImageName)
    }
    
    var distance: Int
    var isFavorite: Bool
}
