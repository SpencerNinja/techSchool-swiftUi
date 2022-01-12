//
//  Themes.swift
//  Memorize
//
//  Created by Spencer Hurd on 1/11/22.
//

import Foundation


struct Themes {
    
    static let themes = [
        Theme(
            name: "BATMAN",
            emojis: ["🦇", "🤡", "♦️", "🥶", "🐈‍⬛", "🐧", "🎭", "🥷🏼", "🌿", "💰", "🐦", "😱", "👊"].shuffled(),
            pairsOfCards: 13,
            color: "36454F"),
        Theme(
            name: "TMNT",
            emojis: ["🐢", "🐀", "🍕", "🧪", "🥷🏼", "⚔️", "🚃", "🏒", "✦"].shuffled(),
            pairsOfCards: 9,
            color: "718B5A"),
        Theme(
            name: "VEHICLES",
            emojis: ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"].shuffled(),
            pairsOfCards: 24,
            color: "FFA500"),
        Theme(
            name: "HOLIDAYS",
            emojis: ["🎉", "🎊", "🎁", "🎄", "🎃", "🎅🏻", "🎎", "🪔", "🧑🏼‍🎄", "🤶🏾"].shuffled(),
            pairsOfCards: 10,
            color: "C54245"),
        Theme(
            name: "HARRY POTTER",
            emojis: ["🧙🏼‍♀️", "🧙🏼", "🧙‍♂️", "🪄", "🚂", "🐍", "🏆", "🧹", "🐈‍⬛", "🐀", "🐺", "🦉", "🦄", "🐉", "🧪", "🕷", "🏰"].shuffled(),
            pairsOfCards: 17,
            color: "222F5B"),
        Theme(
            name: "FLAGS",
            emojis: ["🏴‍☠️", "🏴", "🇺🇳", "🇦🇺", "🇧🇸", "🇦🇹", "🇨🇷", "🇪🇪", "🇯🇵", "🇹🇹", "🇺🇸", "🇾🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇬🇧", "🇰🇼", "🇳🇴", "🇸🇦", "🇸🇩", "🏴󠁧󠁢󠁷󠁬󠁳󠁿", "🇹🇭", "🇰🇷", "🇷🇺", "🇩🇪", "🇫🇷", "🇨🇳", "🇨🇦", "🇲🇽", "🇵🇭", "🇮🇪", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇪🇸"].shuffled(), // FLAGS actually has 31 emojis
            pairsOfCards: 28,
            color: "FFD700")
    ]
}
