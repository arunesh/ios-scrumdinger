//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Arunesh Mishra on 2/15/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                // ScrumsView(scrums: DailyScrum.sampleData)
                TestView()
            }
        }
    }
}
