//
//  WindStern.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CWindStern: CCard {
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Wind Stern"
        _szEffectCard = "Others view you at distance +1"
        _eType = E_TYPE_CARDS.EQUIPMENT
        _ePlayableCard = E_CARDS.WIND_STERN
        setImageName()
    }
    
    override func useEffect() {
//        Others view you at distance +1
        
//        Gli altri ti vedono a distanza +1
    }
    
}
