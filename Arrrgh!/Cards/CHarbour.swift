//
//  CBarrel.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 11/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CHarbour: CCard{
    
    override init(iValue:Int, eSuit:E_SUITS_CARD){
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Harbour"
        _szEffectCard = "Aggiungere"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.HARBOUR
        setImageName()
    }
    
    override func useEffect() {
        
    }
    
}
