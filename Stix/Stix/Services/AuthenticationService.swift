//
//  AuthenticationService.swift
//  Stix
//
//  Created by Michael Lee on 4/10/23.
//

import Foundation
import FirebaseAuth

let authenticationService = AuthenticationService.shared
final class AuthenticationService: AbstractStatelessService {
    fileprivate static let shared = AuthenticationService()
    
    private init() { }
    
    func createUser(email: String, password: String) async throws -> UserModel {
        let authorizationResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return UserModel(user: authorizationResult.user)
    }
}
