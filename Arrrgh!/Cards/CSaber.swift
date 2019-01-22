//
//  Saber.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CSaber: CCard {
    var _iRange: Int = 4
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Saber"
        _szEffectCard = "You can play any number of Arrrgh!"
        _eType = E_TYPE_CARDS.WEAPON
        _ePlayableCard = E_CARDS.SABER
        setImageName()
    }
    
    override func useEffect() {
//        You can play any number of Arrrgh!
        
//        Puoi giocare quanti Arrrgh! vuoi
        
    }

}
