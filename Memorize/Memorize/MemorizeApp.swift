//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
