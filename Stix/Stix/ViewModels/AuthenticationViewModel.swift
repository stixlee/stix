//
//  AuthenticationViewModel.swift
//  Stix
//
//  Created by Michael Lee on 4/10/23.
//

import Foundation
import SwiftUI

final class AuthenticationViewModel: AbstractViewModel {
    @Published var email: String = "" {
        didSet { print(" set email: \(email)")}
    }
    @Published var password: String = ""
    
    func login() {
        
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password")
            return
        }
        Task {
            do {
                let user = try await authenticationService.createUser(email: email, password: password)
                print("Successful Login")
                print("User: \(user)")
            } catch {
                print("Login failed: \(error)")
            }
        }
        
        
    }
}
