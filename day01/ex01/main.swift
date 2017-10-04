//
// Created by Tony MACK on 2017/10/03.
//

import Foundation

let card1 = Card(Color : Color.spade, Value : Value.ace)
let card2 = Card(Color : Color.diamond, Value: Value.two)

print(card1)
print(card2)
if card1 == card2 {
    print("card 1 and card 2 are =")
} else {
    print("card1 and card2 are not =")
}

if (card1 == card1) {
    print("card 1 and card1 are =")
}
