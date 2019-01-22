//
//  CMissed.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 15/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CMissed: CCard {
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Missed"
        _szEffectCard = "Missed!"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.MISSED
        setImageName()
    }
    
    override func useEffect() {
//        Missed!
        
//        Mancato!
    }
}
