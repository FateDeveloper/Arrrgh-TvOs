//
//  Duel.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CDuel: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Duel"
        _szEffectCard = "A target player discard a Arrrgh!, then you, etc... Frist player failing to discard a Arrrgh! loses 1 life point"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.DUEL
        setImageName()
    }
    
    override func useEffect() {
//        A target player discard a Arrrgh!, then you, etc... Frist player failing to discard a Arrrgh! loses 1 life point
        
//        Un giocatore scarta un Arrrgh!, poi tu, ecc... Il primo che non lo fa perde 1 punto vita
    }

}
