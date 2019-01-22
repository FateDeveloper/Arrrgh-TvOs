//
//  Prison.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CPrison: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Prison"
        _szEffectCard = "Drow a card, if heart, discard tha Prison, play normally. Else discar the Prison and skip your turn"
        _eType = E_TYPE_CARDS.EQUIPMENT
        _ePlayableCard = E_CARDS.PRISON
        setImageName()
    }
    
    override func useEffect() {
//        Drow a card, if heart, discard tha Prison, play normally. Else discar the Prison and skip your turn
        
//        Pesca una carta, se cuori, scarta la prigione, e gioca. Altrimenti scarta la Prigione e salta il turno
    }
    
}
