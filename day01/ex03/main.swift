//
// Created by Tony MACK on 2017/10/03.
//

import Foundation

var deck1 = Array(Deck.allCards)

for item in Deck.allCards {
    print("Color: \(item.color.rawValue), Suit: \(item.color), Value: \(item.value)")
}

deck1.shuffle()

for item in deck1 {
    print("Color: \(item.color.rawValue), Suit: \(item.color), Value: \(item.value)")
}
