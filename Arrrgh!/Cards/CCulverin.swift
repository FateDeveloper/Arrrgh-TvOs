//
//  Culverin.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CCulverin: CCard {
    var _iRange: Int = 5
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Culverin"
        _szEffectCard = "Cannon of relatively long barrel and light construction. Shoot light but long distance projectiles"
        _eType = E_TYPE_CARDS.WEAPON
        _ePlayableCard = E_CARDS.CULVERIN
        setImageName()
    }
    
    override func useEffect() {
//        Description:
//        Cannon of relatively long barrel and light construction. Shoot light but long distance projectiles
        
//        Descrizione:
//        Cannone con canna relativamene lunga e costruzione leggera. Spara proiettili leggeri ma a lunga distanza
    }

}
