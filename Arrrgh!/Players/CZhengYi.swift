//
//  CZhengYi.swift
//  Arrrgh!
//
//  Created by Vincenzo Restino on 13/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

class CZhengYi: CPlayer {
    
    override init(szName:String, eRole:E_ROLE_PLAYERS, oView:PlayerView){
        super.init(szName: szName, eRole: eRole, oView: oView)
        
        _eCharacter = E_PLAYABLE_CHARACTERS.ZHENG_YI
        _szNameCard = "Zheng Yi"
        _szEffectCard = "He may draw his first card from the discard pile"
        _iMaxLife = 4;
        initLife(iLife: _iMaxLife!)
        _oView!.initPlayerImage(oImage: UIImage(named: _eCharacter!.getString()))
        
    }
    
//    He may draw his frist card from the discard pile
    
//    Può pescare la prima carta dalla cima degli scarti
    
}
