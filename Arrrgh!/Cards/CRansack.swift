//
//  CRansack.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CRansack: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Ransack"
        _szEffectCard = "Pick a card from a player at a distance 1"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.RANSACK
        setImageName()
    }
    
    override func useEffect() {
//        Pick a card from a player at a distance 1
        
//        Prendi una carta da un giocatore a distanza 1
    }

}
