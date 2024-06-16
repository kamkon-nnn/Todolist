//
//  ContentView.swift
//  App
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @Query var todos: [TodoIteam]
    @State var showAddToDoSheet: Bool = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(todos){item in
                    TodoRowItem(item: item)
                }
            }
                .navigationTitle("To-Do")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button("Add"){
                            showAddToDoSheet.toggle()
                        }
              }
            }
        }
        .sheet(isPresented: $showAddToDoSheet,
               content: {
            AddTodoSheet()
        })
    }
  }

