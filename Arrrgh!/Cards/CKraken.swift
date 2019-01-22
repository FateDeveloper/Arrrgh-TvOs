//
//  CKrake.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CKraken: CCard {

    override init(iValue:Int, eSuit:E_SUITS_CARD) {
        super.init(iValue:iValue, eSuit:eSuit)
        _szNameCard = "Kraken"
        _szEffectCard = "All other players discard a Arrrgh! or lose 1 life point"
        _eType = E_TYPE_CARDS.PLAYABLE
        _ePlayableCard = E_CARDS.KRAKEN
        setImageName()
    }
    
    override func useEffect() {
//        All other players discard a Arrrgh! or lose 1 life point
        
//        Tutti gli altri scartano un Arrrgh! o perdono 1 punto vita
    }

}
