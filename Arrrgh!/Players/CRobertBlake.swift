//
//  CRobertBlake.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CRobertBlake: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.ROBERT_BLAKE
        _szNameCard = "Robert Blake"
        _szEffectCard = "Eh time he is hit, he draws a card"
        _iMaxLife = 4
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }
    
//    Eh time he is hit, he draws a card
    
//    Ogni volta che viene ferito, pesca una carta
    
}
