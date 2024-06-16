//
//  TodoRowItem.swift
//  App
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI

struct TodoRowItem: View {
    var item: TodoIteam
    @Environment(\.modelContext) var context
    
    var body: some View {
        HStack(spacing:10){
            Image(systemName: item.isCheck ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture{
                    item.isCheck.toggle()
                    try? context.save()
                }
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title3)
                    .strikethrough(item.isCheck)
                    .foregroundColor(item.isCheck ? .secondary : .primary )
                
                Text(item.dueDate, style: .date)
                    .font(.caption)
                    .foregroundStyle(item.isCheck ? .secondary : .primary)
                
            }
        }
    }
}


