//
//  AnimalListApp.swift
//  AnimalList
//
//  Created by Spencer Hurd on 1/10/22.
//

import SwiftUI

@main
struct AnimalListApp: App {
    
    @StateObject var vm = AnimalViewModel()
    var body: some Scene {
        WindowGroup {
            AnimalListView()
                .environmentObject(vm)
        }
    }
}
