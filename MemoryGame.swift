//
//  MemoryGame.swift
//  Memorize
//
//  Created by Bruna Santiago on 05/05/21.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isfaceUp: false, isMatched: false, content: content))
            cards.append(Card(isfaceUp: false, isMatched: false, content: content))
        }
    }
    
    struct Card {
        var isfaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
