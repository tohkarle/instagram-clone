//
//  LoginView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LogInViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // Logo
                Text("Instagram")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Text field
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(IGTextFieldModifier())
                }
                
                Button {
                    print("Forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    Task { try await viewModel.signIn() }
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.horizontal, 24)
                .padding(.vertical)
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }.padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}
