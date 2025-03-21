//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        // 86400 sceonds = number of seconds in a day
        // This helps to get rid of weird timezone problems
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
