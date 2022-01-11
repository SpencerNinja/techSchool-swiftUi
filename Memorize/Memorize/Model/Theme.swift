//
//  Theme.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/15/21.
//

import Foundation

struct Theme: Identifiable {
    var id = UUID().uuidString
    var name: String = ""
    var emojis: [String] = []
    var pairsOfCards: Int = 0
    var color: String = ""
}

/**
 THEMES
    Batman
        name = "BATMAN"
        emojis = ["🦇", "🤡", "♦️", "🥶", "🐈‍⬛", "🐧", "🎭", "🥷🏼", "🌿", "💰", "🐦", "😱", "👊"]
        pairsOfCards = 13
        themeColor = .gray

    Teenage Mutant Ninja Turtles
        name = "TMNT"
        emojis = ["🐢", "🐀", "🍕", "🧪", "🥷🏼", "⚔️", "🚃", "🏒", "✦"]
        pairsOfCards = 9
        themeColor = .green

    Vehicles
        name = "VEHICLES"
        emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
        pairsOfCards = 24
        themeColor = .blue
 
    Holiday
        name = "HOLIDAYS"
        emojis = ["🎉", "🎊", "🎁", "🎄", "🎃", "🎅🏻", "🎎", "🪔", "🧑🏼‍🎄", "🤶🏾"]
        pairsOfCards = 10
        themeColor = .red

 
    Harry Potter
        name = "HARRY POTTER"
        emojis = ["🧙🏼‍♀️", "🧙🏼", "🧙‍♂️", "🪄", "🚂", "🐍", "🏆", "🧹", "🐈‍⬛", "🐀", "🐺", "🦉", "🦄", "🐉", "🧪", "🕷", "🏰"]
        pairsOfCards = 17
        themeColor = .gold      // gold, marroon, green, blue, yellow
 
    Flags
        name = "FLAGS"
        emojis = ["🏴‍☠️", "🏴", "🇺🇳", "🇦🇺", "🇧🇸", "🇦🇹", "🇨🇷", "🇪🇪", "🇯🇵", "🇹🇹", "🇺🇸", "🇾🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇬🇧", "🇰🇼", "🇳🇴", "🇸🇦", "🇸🇩", "🏴󠁧󠁢󠁷󠁬󠁳󠁿", "🇹🇭", "🇰🇷", "🇷🇺", "🇩🇪", "🇫🇷", "🇨🇳", "🇨🇦", "🇲🇽", "🇵🇭", "🇮🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇪🇸"]
        pairsOfCards = 28       // actually 31
        themeColor = .purple
 
 */
