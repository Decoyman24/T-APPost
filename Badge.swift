//
//  Badge.swift
//  T'APPost
//
//  Created by Luigi Minniti on 19/11/21.
//

import Foundation
struct Badge : Hashable {
    let id = UUID()
    let icon : String
    var greyness: Double
}

var badges : [Badge] = [
    Badge(icon: "👋🏼", greyness: 0),
    Badge(icon: "🤌🏼", greyness: 1),
    Badge(icon: "🛒", greyness: 1),
    Badge(icon: "🍕", greyness: 1),
    Badge(icon: "✊🏼", greyness: 1),
    Badge(icon: "💋", greyness: 1),
    Badge(icon: "🤬", greyness: 1),
    Badge(icon: "👊🏼", greyness: 1)
]
