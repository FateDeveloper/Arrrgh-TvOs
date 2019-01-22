//
//  CEricCobham.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CEricCobham: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.ERIC_COBHAM
        _szNameCard = "Eric Cobham"
        _szEffectCard = "Each time he is hit by a player, he draws a card from the hand of that player"
        _iMaxLife = 3;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }
    
//     Each time he is hit by a player, he draws a card from the hand of that player
    
//    Ogni volta che viene ferito da un giocatore, pesca una carta dalla mano di quel giocatore
    
}
