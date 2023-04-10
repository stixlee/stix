//
//  AuthenticationViewModel.swift
//  Stix
//
//  Created by Michael Lee on 4/10/23.
//

import Foundation
import SwiftUI

final class AuthenticationViewModel: AbstractViewModel {
    @Published var email: String = ""
    @Published var password: String = ""
}
