//
//  FeedCell.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack {
            // Profile pic and username
            HStack {
                if let user = post.user {
                    Image(user.profileImageUrl ?? "avatar")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // Post image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action buttons
            HStack(spacing: 16) {
                Button {
                    print("Liked")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Commented")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Shared")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }

                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            
            // Likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
            
            // Caption label
            HStack {
                if let user = post.user {
                    Text(user.username).fontWeight(.semibold) +
                    Text(" ") +
                    Text(post.caption)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.top, 1)
            .padding(.leading, 10)
            
            // Time stamp label
            Text("6h ago")
                .font(.footnote)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
        }
        .padding(.bottom, 21)
    }
}
