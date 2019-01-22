//
//  CArujBarbarossa.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CArujBarbarossa: CPlayer {

    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.ARUJ_BARBAROSSA
        _szNameCard = "Aruj Barbarossa"
        _szEffectCard = "He may draw his frist card from the hand of a player"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }
    
//    He may draw his frist card from the hand of a player
    
//    Può pescare la prima carta dalla mano di un giocatore
}
