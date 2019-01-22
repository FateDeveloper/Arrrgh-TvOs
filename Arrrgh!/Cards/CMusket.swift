//
//  Musket.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CMusket: CCard {
    var _iRange: Int = 4

    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Musket"
        _szEffectCard = "Weapon a muzzle-loaded long, capable of penetrating heavy armor. Unlike the blunderbus, it has a narrow muzzle"
        _eType = E_TYPE_CARDS.WEAPON
        _ePlayableCard = E_CARDS.MUSKET
        setImageName()
    }
    
    override func useEffect() {
//        Description:
//        Weapon a muzzle-loaded long, capable of penetrating heavy armor. Unlike the blunderbus, it has a narrow muzzle
        
//        Descrizione:
//        Arma caricata a muso lungo, capace di penetrare un'armatura pesante. A differenza del blunderbus, ha un muso stretto
        
    }

}
