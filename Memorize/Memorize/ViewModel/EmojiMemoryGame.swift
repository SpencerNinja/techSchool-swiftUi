//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @State var theme: Theme = Theme()
    
    init() {
        let availableThemes: [ThemeChoice] = [.batman, .tmnt, .vehicles, .holiday, .harry, .flags]
        let themeChoice: ThemeChoice = availableThemes.randomElement()!
        enum ThemeChoice {
            case batman, tmnt, vehicles, holiday, harry, flags
        }
        func setTheme() {
            switch themeChoice {
            case .batman:
                theme.name = "BATMAN"
                theme.emojis = ["🦇", "🤡", "♦️", "🥶", "🐈‍⬛", "🐧", "🎭", "🥷🏼", "🌿", "💰", "🐦", "😱", "👊"]
                theme.pairsOfCards = 13
                theme.color = "#444444"
            case .tmnt:
                theme.name = "TMNT"
                theme.emojis = ["🐢", "🐀", "🍕", "🧪", "🥷🏼", "⚔️", "🚃", "🏒", "✦"]
                theme.pairsOfCards = 9
                theme.color = "#00FF00"
            case .vehicles:
                theme.name = "VEHICLES"
                theme.emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
                theme.pairsOfCards = 24
                theme.color = "#0000FF"
            case .holiday:
                theme.name = "HOLIDAYS"
                theme.emojis = ["🎉", "🎊", "🎁", "🎄", "🎃", "🎅🏻", "🎎", "🪔", "🧑🏼‍🎄", "🤶🏾"]
                theme.pairsOfCards = 10
                theme.color = "#FF0000"
            case .harry:
                theme.name = "HARRY POTTER"
                theme.emojis = ["🧙🏼‍♀️", "🧙🏼", "🧙‍♂️", "🪄", "🚂", "🐍", "🏆", "🧹", "🐈‍⬛", "🐀", "🐺", "🦉", "🦄", "🐉", "🧪", "🕷", "🏰"]
                theme.pairsOfCards = 17
                theme.color = "#FFFF00"      // gold, marroon, green, blue, yellow
            case .flags:
                theme.name = "FLAGS"
                theme.emojis = ["🏴‍☠️", "🏴", "🇺🇳", "🇦🇺", "🇧🇸", "🇦🇹", "🇨🇷", "🇪🇪", "🇯🇵", "🇹🇹", "🇺🇸", "🇾🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇬🇧", "🇰🇼", "🇳🇴", "🇸🇦", "🇸🇩", "🏴󠁧󠁢󠁷󠁬󠁳󠁿", "🇹🇭", "🇰🇷", "🇷🇺", "🇩🇪", "🇫🇷", "🇨🇳", "🇨🇦", "🇲🇽", "🇵🇭", "🇮🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇪🇸"]
                theme.pairsOfCards = 28       // actually 31
                theme.color = "#800080"
            }
        }
    }
    

    
    static func createMemoryGame() -> MemoryGame<String> {
        let theme = Theme()
        return MemoryGame<String>(numberOfPairsOfCards: theme.pairsOfCards) { pairIndex in
            theme.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
