//
// Created by Tony MACK on 2017/10/03.
//

//import Foundation

var cardColor: [Color] = Color.allColors
var cardValue: [Value] = Value.allValues

for color in cardColor {
    print("Card \(color) : " + color.rawValue)
}

for value in cardValue {
    print("Card \(value): \(value.rawValue)")
}