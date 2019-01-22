//
//  CChingShih.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CChingShih: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.CHING_SHIH
        _szNameCard = "Ching Shih"
        _szEffectCard = "She sees all players at a distance decreased by 1"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
    }
    
//    She sees all players at a distance decreased by 1
    
//    Vede tutti i giocatori a distanza diminuita di 1
    
}
