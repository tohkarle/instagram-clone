//
//  ProfileHeaderView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // Profile pic and stats
            HStack {
                Image(user.profileImageUrl ?? "avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")
                    UserStatView(value: 3, title: "Followers")
                    UserStatView(value: 3, title: "Following")
                }
            }
            
            // Name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullName = user.fullName {
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }

                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .frame(height: 32)
                    .foregroundColor(.primary)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
            
            Divider()
        }
        .padding(.horizontal)
    }
}
