//
//  CircleImage.swift
//  LandmarksApp
//
//  Created by Sumair Zamir on 03/10/2020.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        // Replace hardcoded image here
        image
            // Can add masks over the image itself
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
