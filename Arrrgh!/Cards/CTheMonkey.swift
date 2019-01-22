//
//  TheMonkey.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CTheMonkey: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "The Monkey"
        _szEffectCard = "Force to discard a card any one player"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.THE_MONKEY
        setImageName()
    }
    
    override func useEffect() {
//        Force to discard a card any one player

//        Fai scartare una carta ad un giocatore qualsiasi
    }

    
}
