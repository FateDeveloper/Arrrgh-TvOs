//
//  CFrancisDrake.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CFrancisDrake: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.FRANCIS_DRAKE
        _szNameCard = "Francis Drake"
        _szEffectCard = "He looks at the top three cards of the deck and 2 to draw"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }
    
//    He looks at the top three cards of the deck and 2 to draw
    
//    Guarda le prime tre carte del mazzo e sceglie le due da pescare
    
}
