//
//  ListCrud.swift
//  SwiftUIIntermediate
//
//  Created by SHAHBAZ ALAM on 18/12/25.
//

import SwiftUI

struct ListCrud: View {
    
    @State private var fruits: [String] = ["Apple", "Orange", "Mango", "Kiwi"]
    @State private var vegitables : [String] = ["potato", "chilli", "carrot", "tomato"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header:
                            Text("Fruits")
                    .foregroundColor(.cyan)
                        
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit).foregroundColor(.green)
                    }
                    .onDelete(perform: {indexSet in deleteGroceryList(indexSet: indexSet) })
                    //.onDelete(perform: deleteGroceryList)
                    .onMove(perform: moveGroceryList)
                    
                    
                }
                Section(header:
                            Text("Vegitables")
                                .foregroundColor(.cyan)
                ) {
                    ForEach(vegitables, id: \.self) { vegetable in
                        Text(vegetable.description.capitalized).foregroundColor(.green)
                        
                    }
                }
            }
            
            .tint(Color.yellow)
            //            .listRowBackground(Color(.systemGroupedBackground))
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                // Trailing: Add button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        fruits.append("banana")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .tint(.red)
    }
    
    // Delete
    func deleteGroceryList(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    // Move
    func moveGroceryList(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListCrud()
}
