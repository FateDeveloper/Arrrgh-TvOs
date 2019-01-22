//
//  TreasureChest.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CTreasureChest: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Treasure Chest"
        _szEffectCard = "Draw 2 cards"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.TREASURE_CHEST
        setImageName()
    }
    
    override func useEffect() {
//        Draw 2 cards

//        Pesca 2 carte
    }

}
