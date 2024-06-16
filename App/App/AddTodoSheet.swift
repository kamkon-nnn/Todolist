//
//  AddTodoSheet.swift
//  App
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI

struct AddTodoSheet: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State private var newItem = TodoIteam()
    
    var body: some View {
        NavigationStack{
            List{
                TextField("name", text: $newItem.name)
                DatePicker("date", selection: $newItem.dueDate, displayedComponents: .date)
            }
            .navigationTitle("Add Todo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancle"){
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button("add"){
                        context.insert(newItem)
                    }
                }
                
            }
        }
    }
}

