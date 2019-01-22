import Foundation
import UIKit

class CPlayer{
    private var _szPeerID:String?
    internal var _szNameCard:String?
    internal var _szEffectCard:String?
    internal var _iMaxLife:Int?
    private var _iCurrentLife:Int?
    private var _iNumHoldingCards:Int = 0
    internal var _eRolePlayer:E_ROLE_PLAYERS
    internal var _eCharacter:E_PLAYABLE_CHARACTERS?
    private var _bHasDynamite:Bool
    private var _aHandCards:Array<CCard>?
    private var _aGroundCards:Array<CCard>?
    internal var _oView:PlayerView?
    
    init(szName:String,eRole:E_ROLE_PLAYERS,oView:PlayerView){
        _szPeerID = szName
        _eRolePlayer = eRole
        _oView = oView
        _bHasDynamite = false
        
        oView.charName.text = _szPeerID
    }
    
    public func getRole() -> E_ROLE_PLAYERS{
        return _eRolePlayer
    }
    
    public func getMaxLife() -> Int{
        return _iMaxLife!
    }
    
    public func insertInHand(_ oCard:CCard){
        _aHandCards?.append(oCard)
    }
    
    internal func initLife(iLife:Int){
        if (_eRolePlayer == E_ROLE_PLAYERS.CAPTAIN){
            _iMaxLife = iLife+1
            _iCurrentLife = iLife+1
        }else{
            _iMaxLife = iLife
            _iCurrentLife = iLife
        }
        _oView!.initLife(life: _iMaxLife!)
    }
    
    func getStruct()->UserStructLite{
        var aCardsHandStructed:[CardStructLite] = []
        var aCardsGroundStructed:[CardStructLite] = []
        
        for iIndex in 0..._aHandCards!.count-1{
            aCardsHandStructed.append(_aHandCards![iIndex].getStruct())
        }
        
        for iIndex in 0..._aGroundCards!.count-1{
            aCardsGroundStructed.append(_aGroundCards![iIndex].getStruct())
        }
        
        return UserStructLite(_eCharacter: _eCharacter!.getRawValue(),_szPeerID: _szPeerID!,_eRolePlayer: _eRolePlayer.rawValue,_iCurrentLife: _iCurrentLife!,_aHandCards: aCardsHandStructed,_aGroundCards: aCardsGroundStructed)
    }
    
}
