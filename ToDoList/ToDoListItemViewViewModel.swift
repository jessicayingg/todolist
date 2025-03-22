//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for single to do list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func setIsDone(item: ToDoListItem) {
        // item itself is a const, so a mutable copy of item is needed
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        // Update done in database
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
