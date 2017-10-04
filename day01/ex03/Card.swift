//
// Created by Tony MACK on 2017/10/03.
//

import Foundation

class Card : NSObject{
    var color: Color
    var value: Value

    init (Color color:Color, Value value:Value) {
        self.color = color
        self.value = value
    }

    override var description: String {
        return "Card type: \(self.value) of \(self.color)"
    }

    func isEqual(object: AnyObject?) -> Bool {
        if let obj = object as? Card {
            return (obj.color == self.color && obj.value == self.value)
        }
        return false
    }

   static func ==(lhs: Card, rhs: Card) ->Bool{
        return (lhs.isEqual(rhs))
    }
}
