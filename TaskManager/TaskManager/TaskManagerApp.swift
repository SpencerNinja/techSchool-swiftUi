//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
