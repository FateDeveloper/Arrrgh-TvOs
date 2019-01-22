//
//  CCard.swift
//  Arrrgh!
//
//  Created by Ciro Cozzolino on 10/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation

class CCard{
    internal var _ePlayableCard:E_CARDS?
    internal var _szNameCard:String?
    internal var _szEffectCard:String?
    private var _iValue:Int
    private var _eSuit:E_SUITS_CARD
    internal var _szImage:String?
    internal var _eType:E_TYPE_CARDS?
    
    init(iValue:Int, eSuit:E_SUITS_CARD) {
        _iValue = iValue
        _eSuit = eSuit
    }
    
    internal func setImageName(){
        _szImage = _ePlayableCard!.getString()+"_"+String(_iValue)+"_"+String(_eSuit.rawValue)
    }
    
    internal func useEffect(){
//        code
    }
    
    public func getStruct() -> CardStructLite{
        return CardStructLite(_ePlayableCard: _ePlayableCard!.rawValue,_iValue: _iValue, _eSuit: _eSuit.rawValue)
    }
    
}
