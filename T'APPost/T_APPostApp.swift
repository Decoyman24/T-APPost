//
//  T_APPostApp.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI

@main
struct T_APPostApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
//                Dashboard().tabItem{
//                    Label("Dashboard", systemImage: "circle.dashed.inset.filled")
//                }
                QuizDash().tabItem{
                    Label("Quiz", systemImage: "questionmark")
                }
                ArchiveView().tabItem{
                    Label("Archive", systemImage: "books.vertical.circle")
                }
            }
        }
    }
}
