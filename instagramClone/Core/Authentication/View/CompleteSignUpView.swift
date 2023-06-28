//
//  CompleteSignUpView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            
            Text("Welcome to Instagram, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Click below to complete registration and start using Instagram.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complete Sign Up")
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
