//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String>
    private(set) var theme: Theme
    
    init() {
        self.theme = EmojiMemoryGame.getRandomTheme()
        self.model = Self.createMemoryGame(theme: theme)
    }
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        let emojis = theme.emojis
        return MemoryGame<String>(numberOfPairsOfCards: theme.pairsOfCards) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle() {
        self.model.cards.shuffled()
    }
    
    static func getRandomTheme() -> Theme {
        let randomTheme = Themes.themes.randomElement()!
        return randomTheme
    }
    
    func resetAndNewGame() {
        self.theme = EmojiMemoryGame.getRandomTheme()
        self.model = Self.createMemoryGame(theme: theme)
    }
    
}
