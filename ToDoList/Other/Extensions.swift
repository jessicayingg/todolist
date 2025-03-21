//
//  Extensions.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-21.
//

import Foundation

extension Encodable {
    // This is for making the documents in the users collection for firestore in
    //      RegisterViewViewModel, since .setData accepts a dictionary
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            // If it fails, return an empty dictionary
            return [:]
        }
        
        // Now we have data (since it did not fail)
        do {
            // json aka a dictionary
            // Gets json object with the data
            // Cast it to [String: Any]
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            // For error, rturn an empty dictionary
            return [:]
        }
    }
}
