import SwiftUI

struct PopUpSheets: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Open Sheet")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.gray
                .ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    PopUpSheets()
}

