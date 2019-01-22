//
//  CBartholomewRoberts.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CBartholomewRoberts: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.BARTHOLOMEW_ROBERTS
        _szNameCard = "Bartholomew Roberts"
        _szEffectCard = "Whenever a player is eliminated from play, he takes in hand all the cards of that player"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    Whenever a player is eliminated from play, he takes in hand all the cards of that player
    
//    Quando un personaggio è eliminato, prende in mano tutte le carte di quel personaggio
}
