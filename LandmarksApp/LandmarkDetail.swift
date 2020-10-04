//
//  LandmarkDetail.swift
//  LandmarksApp
//
//  Created by Sumair Zamir on 03/10/2020.
//

import SwiftUI

// SwiftUI declares to structs by default for any view
// First struct conforms to View and defines the content and layout
// Second struct is for the preview itself

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        // The text can be customised here or using Xcode's interface
        // Even adjustments using the interface adjust the code
        VStack {
            // Pass the landmark elements through to the Child views
            MapView(coordinate: landmark.locationCoordinate)
                // When only height is specified content dictates the width
                .frame(height: 300)
                // So that the Map view goes into the top area of the phone
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    // These are modifiers below
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    // Space expands the stack to use all of the container view
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            // Adds the flexible space to the stack
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
