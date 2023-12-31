//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Min Pan on 11/5/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)


            Spacer()
        }
    }
}


#Preview {
    LandmarkRow(landmark: landmarks[0])
}
