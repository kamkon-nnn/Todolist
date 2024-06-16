//
//  AppApp.swift
//  App
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

@main
struct AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TodoIteam.self)
    }
}
