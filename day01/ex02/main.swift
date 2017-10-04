//
// Created by Tony MACK on 2017/10/03.
//

import Foundation

let deck1 = Deck()

for item in Deck.allCards {
    print("Color: \(item.color.rawValue), Suit: \(item.color), Value: \(item.value)")
}
