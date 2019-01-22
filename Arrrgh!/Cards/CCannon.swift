//
//  CCannon.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CCannon: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Cannon"
        _szEffectCard = "Do it Arrrgh! at 3 players"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.CANNON
        setImageName()
    }
    
    override func useEffect() {
//        Do it Arrrgh! at 3 players
        
//        Fai Arrrgh! a 3 giocatori
    }

}
