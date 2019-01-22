//
//  Harquebus.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CHarquebus: CCard {
    var _iRange: Int = 3
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Harquebus"
        _szEffectCard = "Shoulder cannon, has a similar shot to a rifle"
        _eType = E_TYPE_CARDS.WEAPON
        _ePlayableCard = E_CARDS.HARQUEBUS
        setImageName()
    }
    
    override func useEffect() {
//        Description:
//        Shoulder cannon, has a similar shot to a rifle
        
//        Descrizione:
//        Cannone da spalla, ha un calcio simile a quello di un fucile
        
    }
    
}
