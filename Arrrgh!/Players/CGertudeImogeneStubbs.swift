//
//  CGertudeImogeneStubbs.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CGertudeImogeneStubbs: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.GERTRUDE_IMOGENE_STUBBS
        _szNameCard = "Gertude Imogene Stubbs"
        _szEffectCard = "He can play any number of Arrrgh! cards"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))

    }
    
//    He can play any number of Arrrgh! cards
    
//    Può giocare un numero qualsiasi di carte Arrrgh!
    
}
