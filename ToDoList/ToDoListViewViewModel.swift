//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import Foundation

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
