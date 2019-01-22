//
//  ExplosiveBarel.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CExplosiveBarrel: CCard{
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Explosive Barrel"
        _szEffectCard = "Drow a card, if 2 or 9 of spades, lose 3 life points. Else pass the Explosive Barrel on your left"
        _eType = E_TYPE_CARDS.EQUIPMENT
        _ePlayableCard = E_CARDS.EXPLOSIVE_BARREL
        setImageName()
    }
    
    override func useEffect() {
//        Drow a card, if 2 or 9 of spades, lose 3 life points. Else pass the Explosive Barrel on your left
        
//        Pesca una carta, se 2 o 9 di picche, perdi 3 punti vita. Altrimenti passa la Dinamite a sinistra
        
    }
    
}
