//
//  CJhonNewgate.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CJhonNewgate: CPlayer {

    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.JOHN_NEWGATE
        _szNameCard = "Jhon Newgate"
        _szEffectCard = "He may discard 2 cards to regain one life point"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }

//    He may discard 2 cards to regain one life point
    
//    Può scartare 2 per recuperare un punto vita
    
}
