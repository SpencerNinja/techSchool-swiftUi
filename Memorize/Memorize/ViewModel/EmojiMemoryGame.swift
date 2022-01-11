//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    
    
    @Published private var model: MemoryGame<String>
    var theme: Theme
    
    init(themePassed: Theme = Themes.themes[0]) {
        self.theme = themePassed
        self.model = Self.createMemoryGame(theme: themePassed)
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
    
}
