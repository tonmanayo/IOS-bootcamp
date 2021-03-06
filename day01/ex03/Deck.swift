//
//  Deck.swift
//  ex02
//
//  Created by Tony MACK on 2017/10/04.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import Foundation

class Deck : NSObject{
    
    static let allSpades : [Card] = [Card(Color: Color.spade, Value: Value.ace),
                                     Card(Color: Color.spade, Value: Value.two),
                                     Card(Color: Color.spade, Value: Value.three),
                                     Card(Color: Color.spade, Value: Value.four),
                                     Card(Color: Color.spade, Value: Value.five),
                                     Card(Color: Color.spade, Value: Value.six),
                                     Card(Color: Color.spade, Value: Value.seven),
                                     Card(Color: Color.spade, Value: Value.eight),
                                     Card(Color: Color.spade, Value: Value.nine),
                                     Card(Color: Color.spade, Value: Value.ten),
                                     Card(Color: Color.spade, Value: Value.jack),
                                     Card(Color: Color.spade, Value: Value.queen),
                                     Card(Color: Color.spade, Value: Value.king)]
    static let allDiamonds : [Card] = [Card(Color: Color.diamond, Value: Value.ace),
                                       Card(Color: Color.diamond, Value: Value.two),
                                       Card(Color: Color.diamond, Value: Value.three),
                                       Card(Color: Color.diamond, Value: Value.four),
                                       Card(Color: Color.diamond, Value: Value.five),
                                       Card(Color: Color.diamond, Value: Value.six),
                                       Card(Color: Color.diamond, Value: Value.seven),
                                       Card(Color: Color.diamond, Value: Value.eight),
                                       Card(Color: Color.diamond, Value: Value.nine),
                                       Card(Color: Color.diamond, Value: Value.ten),
                                       Card(Color: Color.diamond, Value: Value.jack),
                                       Card(Color: Color.diamond, Value: Value.queen),
                                       Card(Color: Color.diamond, Value: Value.king)]
    static let allHearts : [Card] = [Card(Color: Color.heart, Value: Value.ace),
                                      Card(Color: Color.heart, Value: Value.two),
                                      Card(Color: Color.heart, Value: Value.three),
                                      Card(Color: Color.heart, Value: Value.four),
                                      Card(Color: Color.heart, Value: Value.five),
                                      Card(Color: Color.heart, Value: Value.six),
                                      Card(Color: Color.heart, Value: Value.seven),
                                      Card(Color: Color.heart, Value: Value.eight),
                                      Card(Color: Color.heart, Value: Value.nine),
                                      Card(Color: Color.heart, Value: Value.ten),
                                      Card(Color: Color.heart, Value: Value.jack),
                                      Card(Color: Color.heart, Value: Value.queen),
                                      Card(Color: Color.heart, Value: Value.king)]
    static let allClubs : [Card] = [Card(Color: Color.club, Value: Value.ace),
                                     Card(Color: Color.club, Value: Value.two),
                                     Card(Color: Color.club, Value: Value.three),
                                     Card(Color: Color.club, Value: Value.four),
                                     Card(Color: Color.club, Value: Value.five),
                                     Card(Color: Color.club, Value: Value.six),
                                     Card(Color: Color.club, Value: Value.seven),
                                     Card(Color: Color.club, Value: Value.eight),
                                     Card(Color: Color.club, Value: Value.nine),
                                     Card(Color: Color.club, Value: Value.ten),
                                     Card(Color: Color.club, Value: Value.jack),
                                     Card(Color: Color.club, Value: Value.queen),
                                     Card(Color: Color.club, Value: Value.king)]
    
    static let allCards: [Card] = [Card(Color: Color.spade, Value: Value.ace),
                                   Card(Color: Color.spade, Value: Value.two),
                                   Card(Color: Color.spade, Value: Value.three),
                                   Card(Color: Color.spade, Value: Value.four),
                                   Card(Color: Color.spade, Value: Value.five),
                                   Card(Color: Color.spade, Value: Value.six),
                                   Card(Color: Color.spade, Value: Value.seven),
                                   Card(Color: Color.spade, Value: Value.eight),
                                   Card(Color: Color.spade, Value: Value.nine),
                                   Card(Color: Color.spade, Value: Value.ten),
                                   Card(Color: Color.spade, Value: Value.jack),
                                   Card(Color: Color.spade, Value: Value.queen),
                                   Card(Color: Color.spade, Value: Value.king), Card(Color: Color.diamond, Value: Value.ace),
                                   Card(Color: Color.diamond, Value: Value.two),
                                   Card(Color: Color.diamond, Value: Value.three),
                                   Card(Color: Color.diamond, Value: Value.four),
                                   Card(Color: Color.diamond, Value: Value.five),
                                   Card(Color: Color.diamond, Value: Value.six),
                                   Card(Color: Color.diamond, Value: Value.seven),
                                   Card(Color: Color.diamond, Value: Value.eight),
                                   Card(Color: Color.diamond, Value: Value.nine),
                                   Card(Color: Color.diamond, Value: Value.ten),
                                   Card(Color: Color.diamond, Value: Value.jack),
                                   Card(Color: Color.diamond, Value: Value.queen),
                                   Card(Color: Color.diamond, Value: Value.king), Card(Color: Color.heart, Value: Value.ace),
                                   Card(Color: Color.heart, Value: Value.two),
                                   Card(Color: Color.heart, Value: Value.three),
                                   Card(Color: Color.heart, Value: Value.four),
                                   Card(Color: Color.heart, Value: Value.five),
                                   Card(Color: Color.heart, Value: Value.six),
                                   Card(Color: Color.heart, Value: Value.seven),
                                   Card(Color: Color.heart, Value: Value.eight),
                                   Card(Color: Color.heart, Value: Value.nine),
                                   Card(Color: Color.heart, Value: Value.ten),
                                   Card(Color: Color.heart, Value: Value.jack),
                                   Card(Color: Color.heart, Value: Value.queen),
                                   Card(Color: Color.heart, Value: Value.king), Card(Color: Color.club, Value: Value.ace),
                                   Card(Color: Color.club, Value: Value.two),
                                   Card(Color: Color.club, Value: Value.three),
                                   Card(Color: Color.club, Value: Value.four),
                                   Card(Color: Color.club, Value: Value.five),
                                   Card(Color: Color.club, Value: Value.six),
                                   Card(Color: Color.club, Value: Value.seven),
                                   Card(Color: Color.club, Value: Value.eight),
                                   Card(Color: Color.club, Value: Value.nine),
                                   Card(Color: Color.club, Value: Value.ten),
                                   Card(Color: Color.club, Value: Value.jack),
                                   Card(Color: Color.club, Value: Value.queen),
                                   Card(Color: Color.club, Value: Value.king)]

}

extension Array {
    mutating func shuffle() {
        for _ in 0..<count {
            sort {
                (_,_) in  arc4random_uniform(UInt32(10)) <  arc4random_uniform(UInt32(10))
            }
        }
    }
}
