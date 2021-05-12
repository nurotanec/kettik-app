//
//  PageView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/9/21.
//

import SwiftUI

struct PageView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .clipped()
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(imageName: "charyn2")
    }
}
