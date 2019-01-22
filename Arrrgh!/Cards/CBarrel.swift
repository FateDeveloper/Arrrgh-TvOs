//
//  CBarrel.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CBarrel: CCard{
    
    override init(iValue:Int, eSuit:E_SUITS_CARD){
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Barrel"
        _szEffectCard = "Peach a card if hearts are missed"
        _eType = E_TYPE_CARDS.EQUIPMENT
        _ePlayableCard = E_CARDS.BARREL
        setImageName()
    }
    
    override func useEffect() {
//        Peach a card if hearts are missed

//        Pesca una carta, se cuori sei mancato
        
    }
    
}
