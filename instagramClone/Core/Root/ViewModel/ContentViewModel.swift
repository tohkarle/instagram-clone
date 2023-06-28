//
//  ContentViewModel.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setUpSubscribers()
    }
    
    func setUpSubscribers() {
        service.$userSession.sink { [weak self]  userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        service.$currentUser.sink { [weak self]  currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellables)
    }
}
