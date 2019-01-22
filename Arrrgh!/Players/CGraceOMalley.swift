//
//  CGraceOMalley.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CGraceOMalley: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.GRACE_O_MALLEY
        _szNameCard = "Grace O' Malley"
        _szEffectCard = "Whenever he is the target of a Arrrgh!, he may draw: on a Heart he is missed"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    Whenever he is the target of a Arrrgh!, he may draw: on a Heart he is missed

//    Ogni volta che è bersaglio di un Arrrgh!, può estrarre: se esce Cuori, viene mancato
}
