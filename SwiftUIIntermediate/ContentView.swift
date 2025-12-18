//
//  ContentView.swift
//  SwiftUIIntermediate
//
//  Created by SHAHBAZ ALAM on 18/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Spacer()
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
