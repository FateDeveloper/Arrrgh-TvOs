//
//  CJeanneDeBelleville.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CJeanneDeBelleville: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        _eCharacter = E_PLAYABLE_CHARACTERS.JEANNE_DE_BELLEVILLE
        _szNameCard = "Jeanne De Belleville"
        _szEffectCard = "She can play Arrrgh! cards as Missed! cards and vice versa"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    She can play Arrrgh! cards as Missed! cards and vice versa

//    Può giocare le carte Arrrgh! come carte Mancato! e viceversa
}
