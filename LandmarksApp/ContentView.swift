//
//  ContentView.swift
//  LandmarksApp
//
//  Created by Sumair Zamir on 03/10/2020.
//

import SwiftUI

// SwiftUI declares to structs by default for any view
// First struct conforms to View and defines the content and layout
// Second struct is for the preview itself

struct ContentView: View {
    var body: some View {
        // The text can be customised here or using Xcode's interface
        // Even adjustments using the interface adjust the code
        VStack {
            MapView()
                // When only height is specified content dictates the width
                .frame(height: 300)
                // So that the Map view goes into the top area of the phone
                .edgesIgnoringSafeArea(.top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    // These are modifiers below
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    // Space expands the stack to use all of the container view
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
        }
        // Adds the flexible space to the stack
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
