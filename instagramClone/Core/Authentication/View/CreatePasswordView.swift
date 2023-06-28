//
//  CreatePasswordView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CompleteSignUpView()
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

#Preview {
    CreatePasswordView()
}
