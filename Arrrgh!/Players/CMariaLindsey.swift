//
//  CMariaLindsey.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CMariaLindsey: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.MARIA_LINDSEY
        _szNameCard = "Maria Lindsey"
        _szEffectCard = "He shows the second card he draws. On Heart or Diamonds, he draws one more card"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
    }
    
//    He shows the second card he draws. On Heart or Diamonds, he draws one more card
    
//    Mostra la seconda carta che pesca. Se è Cuori o Quadri
    
}
