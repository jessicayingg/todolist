//
//  User.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import Foundation

struct User: Codable {
    // This is what a user is going to look like
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
