//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Sumair Zamir on 04/10/2020.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Backslack as new annotation to follow through in struct (if not using Identifiable)
        // Lists require conformance to Identifiable or a the use of a key path property
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        // The names must conform as per the list in Xcode
        ForEach(["iPhone SE (2nd generation)", "iPhone 11 Pro Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
