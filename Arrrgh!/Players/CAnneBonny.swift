//
//  CAnneBonny.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CAnneBonny: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        _eCharacter = E_PLAYABLE_CHARACTERS.ANNE_BONNY
        _szNameCard = "Anne Bonny"
        _szEffectCard = "Each time he draws, he flips the top two cards and chooses one"
        _iMaxLife = 4 ;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    Each time he draws, he flips the top two cards and chooses one
    
//    Ogni volta che deve estrarre, scopre 2 carte e sceglie
    
}
