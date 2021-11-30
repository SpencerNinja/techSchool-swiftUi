//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Spencer Hurd on 11/30/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
