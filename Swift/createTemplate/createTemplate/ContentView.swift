//
//  ContentView.swift
//  createTemplate
//
//  Created by Min Pan on 11/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                    MapView()
                        .frame(height: 300)
                    CircleImage()
                        .offset(y: -130)
                        .padding(.bottom, -130)
                    VStack(alignment: .leading)  {
                        Text("No world")
                            .font(.largeTitle)
                        .foregroundColor(.green)
                        HStack {
                            Text("Everyone is dead")
                                .font(.subheadline)
                            Spacer()
                            Text("-> Zombie")
                                .font(.subheadline)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        Divider()
                        
                        Text("About noodle")
                            .font(.title2)
                        Text("why so good")
                        

                    }
                    .padding()
                    Spacer()
                }
    }
}

#Preview {
    ContentView()
}
