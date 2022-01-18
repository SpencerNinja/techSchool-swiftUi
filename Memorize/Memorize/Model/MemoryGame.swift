//
//  MemoryGame.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/13/21.
//

import Foundation
import SwiftUI

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            var faceUpCardIndices = [Int]()
            for index in cards.indices {
                if cards[index].isFaceUp {
                    faceUpCardIndices.append(index)
                }
            }
            if faceUpCardIndices.count == 1 {
                return faceUpCardIndices.first
            } else {
                return nil
            }
        }
        set {
            for index in cards.indices {
                if index != newValue {
                    cards[index].isFaceUp = false
                } else {
                    cards[index].isFaceUp = true
                }
            }
        }
    }
    
    var score: Int
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            cards.shuffle()
        }
        score = 0
    }
    
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id}),
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMatched
        {
            print("1st card has been seen \(cards[chosenIndex].hasBeenSeen) times")
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                cards[chosenIndex].hasBeenSeen += 1
                cards[potentialMatchIndex].hasBeenSeen += 1
                print("2nd card has been seen \(cards[potentialMatchIndex].hasBeenSeen) times")
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += 2
                }
//                indexOfTheOneAndOnlyFaceUpCard = nil
                cards[chosenIndex].isFaceUp = true
                if cards[chosenIndex].hasBeenSeen >= 2 && !cards[chosenIndex].isMatched {
                    score -= 1
                }
                if cards[potentialMatchIndex].hasBeenSeen >= 2 && !cards[potentialMatchIndex].isMatched {
                    score -= 1
                }
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
        print("\(cards)")
    }
    
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        let id: Int
        var hasBeenSeen: Int = 0
    }
    
}
