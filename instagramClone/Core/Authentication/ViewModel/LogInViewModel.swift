//
//  LogInViewModel.swift
//  instagramClone
//
//  Created by Toh Kar Le on 29/6/23.
//

import Foundation

class LogInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.logIn(withEmail: email, password: password)
    }
}
