//
//  EditProfileViewModel.swift
//  instagramClone
//
//  Created by Toh Kar Le on 30/6/23.
//

import PhotosUI
import Firebase
import SwiftUI

@MainActor
class EditProfileViewModel: ObservableObject {
    @Published var user: User
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {  await loadImage(fromItem: selectedImage) } }
    }
    @Published var profileImage: Image?
    @Published var fullName = ""
    @Published var bio = ""
    
    private var uiImage: UIImage?
    
    init(user: User) {
        self.user = user
        
        if let fullName = user.fullName {
            self.fullName = fullName
        }
        
        if let bio = user.bio {
            self.bio = bio
        }
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
    }
    
    func updateUserData() async throws {
        
        var data = [String: Any]()
        
        // Update profile image if changed
        if let uiImage = uiImage {
            let imageUrl = try? await ImageUploader.uploadImage(image: uiImage)
            data["profileImageUrl"] = imageUrl
        }
        
        // Update name if changed
        if !fullName.isEmpty && user.fullName != fullName {
            data["fullName"] = fullName
        }
        
        // Update bio if changed
        if !bio.isEmpty && user.bio != bio {
            data["bio"] = bio
        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
        
    }
}
