//
//  HotelsView.swift
//  Jetisu
//
//  Created by Aidar Suleimen on 5/8/21.
//

import SwiftUI

struct HotelsView: View {
    @State private var numberOfAdults = 1
    @State private var numberOfChildren = 0
    var body: some View {
        List {
            Section(header: Text("Filters")) {
                DatePicker("Check in", selection: .constant(Date()), displayedComponents: [.date])
                DatePicker("Check out", selection: .constant(Date() + 86400), displayedComponents: [.date])
                Stepper(value: $numberOfAdults, in: 1...5) {
                    Text("Number of adults: \(numberOfAdults)")
                }
                Stepper(value: $numberOfChildren, in: 0...5) {
                    Text("Number of children: \(numberOfChildren)")
                }
            }
            
            Section(header: Text("Available hotels")) {
                ForEach(0..<20) { index in
                    Text("Hotel #\(index)")
                }
            }
        }.listStyle(InsetGroupedListStyle())
    }
}

struct HotelsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelsView()
    }
}
