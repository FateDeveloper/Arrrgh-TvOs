//
//  CElDorado.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CElDorado: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "El Dorado"
        _szEffectCard = "Draw 3 cards"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.EL_DORADO
        setImageName()
    }
    
    override func useEffect() {
//        Draw 3 cards
        
//        Pesca 3 carte
    }

}
