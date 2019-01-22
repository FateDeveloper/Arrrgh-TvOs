//
//  Rum.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CRum: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Rum"
        _szEffectCard = "Regain 1 life point"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.RUM
        setImageName()
    }
    
    override func useEffect() {
//        Regain 1 life point

//        Recupera 1 punto vita
    }

}
