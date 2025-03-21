//
//  LoginView.swift
//  ToDoList
//
//  Created by Jessica Ying on 2025-03-20.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        // Allows us to do page navigation
        NavigationView {
            // A vertical stack
            VStack {
                // Header
                HeaderView()
                
                // Login Form
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log in")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
