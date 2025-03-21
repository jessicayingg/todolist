//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        // Helps us figure out when the user has changed, so we can update the view
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
                // uid = unique id, "" = empty string
            }
        }
    }
    
    public var isSignedIn: Bool {
        // Return whether or not there is a current user
        return Auth.auth().currentUser != nil
    }
}
