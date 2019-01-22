//
//  CSayyidaAlHurra.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CSayyidaAlHurra: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.SAYYIDA_AL_HURRA
        _szNameCard = "Sayyida Al Hurra"
        _szEffectCard = "All players see him at a distance increased by 1"
        _iMaxLife = 3;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    All players see him at a distance increased by 1
    
//    Tutti i giocatori lo vedono a distanza aumentata di 1
    
}
