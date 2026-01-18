//
//  ContentView.swift
//  Elvis
//
//  Created by ZM on 1/16/26.
//

import SwiftUI

struct ContentView: View {
    @State private var title = ""
    @State private var imageTitle = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()

            Image(systemName: imageTitle)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    title = "Peace"
                    imageTitle = "peacesign"
                }
                
                Button("Love") {
                    title = "Love"
                    imageTitle = "heart"
                }
                
                Button("Understanding") {
                    title = "Understanding"
                    imageTitle = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
