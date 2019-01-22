//
//  Arrrgh.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CArrrgh: CCard {

    override init(iValue:Int, eSuit:E_SUITS_CARD){
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Arrrgh!"
        _szEffectCard = "Hit a player"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.ARRRGH
        setImageName()
    }
    
    override func useEffect() {
//        Hit a player

//        Colpisci un giocatore
        
    }

}
