//
//  User.swift
//  Stix
//
//  Created by Michael Lee on 4/10/23.
//

import Foundation
import FirebaseAuth

struct UserModel {
    let uid: String
    var email: String?
    var photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
