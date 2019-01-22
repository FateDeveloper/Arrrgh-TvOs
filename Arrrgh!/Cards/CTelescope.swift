//
//  Telescope.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CTelescope: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Telescope"
        _szEffectCard = "You view others at distance -1"
        _eType = E_TYPE_CARDS.EQUIPMENT
        _ePlayableCard = E_CARDS.TELESCOPE
        setImageName()
    }
    
    override func useEffect() {
//        You view others at distance -1
        
//        Tu vedi gli altri a distanza -1
    }
    
}
