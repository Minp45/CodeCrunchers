//
//  CircleImage.swift
//  createTemplate
//
//  Created by Min Pan on 11/5/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("water")
                .resizable() // Make the image resizable
                .aspectRatio(contentMode: .fit) // Ensure the image fits within the frame
                .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.gray, lineWidth: 1)
                    }
                    .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
