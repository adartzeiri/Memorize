//
//  MemoryGame.swift
//  Memorize
//
//  Created by Adar Tzeiri on 22/06/2020.
//  Copyright © 2020 Adar Tzeiri. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    func choose(card: Card) {
        print("Card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp:  Bool = false
        var isMatched: Bool = false
        var content:   CardContent
        var id: Int
    }
}

