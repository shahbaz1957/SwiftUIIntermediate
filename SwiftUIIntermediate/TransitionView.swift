//
//  TransitionView.swift
//  SwiftUIIntermediate
//
//  Created by SHAHBAZ ALAM on 18/12/25.
//

import SwiftUI

struct TransitionView: View {
    @State private var showDetails = false
    var body: some View {
        ZStack(alignment: .bottom){
            Color.red.opacity(0.4)
                    .ignoresSafeArea()
            
            VStack {
                Button("Click For Romio & Juliet") {
                    // Add withAnimation to add transition
                    withAnimation {
                        showDetails.toggle()
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 20)
                
                if showDetails {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 450, height: 400)
                        .cornerRadius(16)
                    
                        //.opacity(showDetails ? 1 : 0)
                        //.animation(.easeInOut, value: showDetails)
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                        .overlay {
                            Text("Romio & Juliet")
                                .foregroundColor(Color.red)
                                .font(Font.largeTitle.bold())
                        }
                        
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionView()
}
