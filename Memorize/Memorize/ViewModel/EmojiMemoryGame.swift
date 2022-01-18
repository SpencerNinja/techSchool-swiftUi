//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    @Published private var model: MemoryGame<String>
    
    private(set) var theme: Theme
    
    init() {
        self.theme = EmojiMemoryGame.getRandomTheme()
        self.model = Self.createMemoryGame(theme: theme)
    }
    
    private static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        let emojis = theme.emojis
        let randomNumOfPairs: Int = Int.random(in: 2..<theme.pairsOfCards)
        return MemoryGame<String>(numberOfPairsOfCards: randomNumOfPairs) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    static func getRandomTheme() -> Theme {
        let randomTheme = Themes.themes.randomElement()!
        return randomTheme
    }
    
    func resetAndNewGame() {
        self.theme = EmojiMemoryGame.getRandomTheme()
        self.model = Self.createMemoryGame(theme: theme)
    }
    
    func getScore() -> Int {
        model.score
    }
    
}
