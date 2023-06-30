//
//  ProfileView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            // Header
            ProfileHeaderView(user: user)
            
            // Post grid view
            PostGridView(user: user)
 
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}
