//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-14.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
