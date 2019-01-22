//
//  Blunderbuss.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CBlunderbuss: CCard {
    var _iRange: Int = 2
    
    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Blundebuss"
        _szEffectCard = "A muzzle-loading firearm with a short barrel, a flaring muzzle to facilitate loading"
        _eType = E_TYPE_CARDS.WEAPON
        _ePlayableCard = E_CARDS.BLUNDERBUSS
        setImageName()
    }
    
    override func useEffect() {
//        Description:
//        A muzzle-loading firearm with a short barrel, a flaring muzzle to facilitate loading
        
//        Descrizione:
//        Arma a carica avancaria dalla canna corta, la carica è facilitata dalla bocca larga
    }
    
}
