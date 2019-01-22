//
//  CSeaMarket.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CSeaMarket: CCard {

    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "SeaMarket"
        _szEffectCard = "Reveal as many cards as players. Each player draws one"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.SEA_MARKET
        setImageName()
    }
    
    override func useEffect() {
//        Reveal as many cards as players. Each player draws one
        
//        Rivela carte tante quanti i giocatori. Ognuno ne pesca una
    }

}
