//
//  Badge.swift
//  T'APPost
//
//  Created by Luigi Minniti on 19/11/21.
//
//
import Foundation
import SwiftUI

struct Badge : Hashable {
    let id = UUID()
    let icon : String
    var greyness: Double
    var category: String
}

var badges : [Badge] = [
    Badge(icon: "👋🏼", greyness: 0, category: "Greetings"),
    Badge(icon: "🍕", greyness: 0, category: "Daily Life"),
    Badge(icon: "💋", greyness: 0, category: "Romance"),
    Badge(icon: "🤬", greyness: 0, category: "Danger Zone")
]
