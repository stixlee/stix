//
//  CustomColors.swift
//  Stix
//
//  Created by Michael Lee on 4/7/23.
//

import UIKit
import SwiftUI

extension UIColor {
    static let primaryBackground = UIColor(named: "primaryBackground") ?? .black
    static let primary = UIColor(named: "primary") ?? .white
}

extension Color {
    static let primaryBackground = Color(UIColor.primaryBackground)
    static let primary = Color(UIColor.primary)
}

