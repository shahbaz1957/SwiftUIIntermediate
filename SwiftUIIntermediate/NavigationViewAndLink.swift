//
//  NavigationViewAndLink.swift
//  SwiftUIIntermediate
//
//  Created by SHAHBAZ ALAM on 18/12/25.
//
import SwiftUI

struct NavigationViewAndLink: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Go to Home") {
                    SecondNavScreen()
                }
            }
            .navigationTitle("All Mail")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Settings") {
                        SecondNavScreen()
                    }
                }
            }
        }
    }
}

struct SecondNavScreen: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            NavigationLink("Click to go to 3rd screen") {
                ThirdScreen()
            }
        }
        .navigationTitle("Red Screen")
    }
}

struct ThirdScreen: View {
    var body: some View {
        Text("3rd Screen")
            .navigationTitle("Back to prev")
        
    }
}


#Preview {
    NavigationViewAndLink()
}
