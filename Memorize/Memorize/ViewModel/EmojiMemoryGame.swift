//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String>
    @State var theme: Theme
    
    init(themePassed: Theme = Themes.themes[0]) {
        self.theme = themePassed
        self.model = Self.createMemoryGame(theme: themePassed)
    }
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        let randomTheme = Themes.themes.randomElement()!
        let emojis = randomTheme.emojis
        return MemoryGame<String>(numberOfPairsOfCards: randomTheme.pairsOfCards) { pairIndex in
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
