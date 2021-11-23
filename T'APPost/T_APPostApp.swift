//
//  T_APPostApp.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI

@main
struct T_APPostApp: App {
    @StateObject var ourUser = Utente()
    var body: some Scene {
        WindowGroup {
            TabView{
                Dashboard(ourUser: ourUser).tabItem{
                    Label("Dashboard", systemImage: "circle.dashed.inset.filled")
                }
                QuizDash(ourUser: ourUser).tabItem{
                    Label("Quiz", systemImage: "questionmark")
                }
                ArchiveView(ourUser: ourUser).tabItem{
                    Label("Archive", systemImage: "books.vertical.circle")
                }
            }
        }
    }
}
