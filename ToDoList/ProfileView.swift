//
//  ProfileView.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-14.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Poopy")
                    }
                    .padding()
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("Poopy")
                    }
                    .padding()
                    HStack {
                        Text("Member Since: ")
                            .bold()
                        Text("Poopy")
                    }
                    .padding()
                }
                .padding()
                
                // Sign out
                Button("Log Out") {
                    viewModel.logout()
                }
                .tint(.red)
                .padding()
                
                Spacer()
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
