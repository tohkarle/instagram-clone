//
//  CreateUsernameView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can always change it later.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $viewModel.username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CreatePasswordView()
            } label: {
                Text("Next")
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
            
            Spacer()
        }
    }
}
