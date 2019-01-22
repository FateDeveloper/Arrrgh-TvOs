//
//  CGameManager.swift
//  Arrrgh!
//
//  Created by Ciro Cozzolino on 12/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit
import MultipeerConnectivity

class CGameManager{
    let _oMultipeer = MPCManager.sharedInstance
    var _aPlayers:Array<CPlayer> = []
    var _oActualPlayer:CPlayer?
    var _eActualTurnPhase:E_TURN_PHASES?
    var _aDeck:Array<CCard> = []
    var _aDiscardedCards:Array<CCard>?
    var _oPlayingCard:CCard?
    var _iIndexPlayer:Int = 0
    
    init (aPeerIDs:Array<String>,aPlayersView:Array<PlayerView>){
        initPlayers(aPeerIDs: aPeerIDs,aPlayersView: aPlayersView)
        
        for oPlayer in _aPlayers{
            if (oPlayer.getRole() == E_ROLE_PLAYERS.CAPTAIN){
                _oActualPlayer = oPlayer
                break
            }
        }
        initDeck()
        initHands()
        
        _eActualTurnPhase = .PLAY_CARDS
        _oPlayingCard = nil
    }
    
    private func initPlayers(aPeerIDs:Array<String>,aPlayersView:Array<PlayerView>){
        var aAvailableRoles:Array<E_ROLE_PLAYERS> = []
        switch aPeerIDs.count{
        case 4:
            aAvailableRoles.append(.CAPTAIN)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.RENEGADE)
        case 5:
            aAvailableRoles.append(.CAPTAIN)
            aAvailableRoles.append(.QUARTER_MASTER)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.RENEGADE)
            break
        case 6:
            aAvailableRoles.append(.CAPTAIN)
            aAvailableRoles.append(.QUARTER_MASTER)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.RENEGADE)
            break
        default:
            aAvailableRoles.append(.CAPTAIN)
            aAvailableRoles.append(.QUARTER_MASTER)
            aAvailableRoles.append(.QUARTER_MASTER)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.CORSAIR)
            aAvailableRoles.append(.RENEGADE)
            break
        }
        aAvailableRoles.shuffle()
        
        var aAvailableCharacters:Array<E_PLAYABLE_CHARACTERS> = []
        
        for iIndex in 0...E_PLAYABLE_CHARACTERS.allCases.count-1{
            aAvailableCharacters.append(E_PLAYABLE_CHARACTERS.allCases[iIndex])
        }
        
        aAvailableCharacters.shuffle()
        
        for iIndex in 0...aPeerIDs.count-1{
            switch aAvailableCharacters.removeLast(){
            case E_PLAYABLE_CHARACTERS.ANNE_BONNY:
                _aPlayers.append(CAnneBonny(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.ARUJ_BARBAROSSA:
                _aPlayers.append(CArujBarbarossa(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.BARTHOLOMEW_ROBERTS:
                _aPlayers.append(CBartholomewRoberts(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.CHING_SHIH:
                _aPlayers.append(CChingShih(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.EDWARD_TEACH:
                _aPlayers.append(CEdwardTeach(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.ERIC_COBHAM:
                _aPlayers.append(CEricCobham(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.FRANCIS_DRAKE:
                _aPlayers.append(CFrancisDrake(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.GERTRUDE_IMOGENE_STUBBS:
                _aPlayers.append(CGertudeImogeneStubbs(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.GRACE_O_MALLEY:
                _aPlayers.append(CGraceOMalley(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.JEANNE_DE_BELLEVILLE:
                _aPlayers.append(CJeanneDeBelleville(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.JOHN_NEWGATE:
                _aPlayers.append(CJhonNewgate(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.MARIA_LINDSEY:
                _aPlayers.append(CMariaLindsey(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.MARY_READ:
                _aPlayers.append(CMaryRead(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.ROBERT_BLAKE:
                _aPlayers.append(CRobertBlake(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.SAYYIDA_AL_HURRA:
                _aPlayers.append(CSayyidaAlHurra(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            case E_PLAYABLE_CHARACTERS.ZHENG_YI:
                _aPlayers.append(CZhengYi(szName: aPeerIDs[iIndex],eRole: aAvailableRoles.removeLast(),oView: aPlayersView[iIndex]))
            }
        }
    }
    
    private func initHands(){
        for iIndexI in 0..._aPlayers.count-1{
            for _ in 0..._aPlayers[iIndexI].getMaxLife()-1{
                _aPlayers[iIndexI].insertInHand(_aDeck.removeLast())
            }
        }
    }
    
    public func next(){
        _oPlayingCard = nil
        
        switch (_eActualTurnPhase!){
        case .EXTRACT:
            print("Extract Phase")
            /*for (oCard in _oActualPlayer.getGroundCards()){
             if (oCard.eType == E_TYPE_CARDS.EQUIPMENT && oCard.bExtraction){
             _oPlayingCard = oCard
             }
             }*/
            if (_oPlayingCard == nil){
                _eActualTurnPhase!.next()
            }else{
                //_oActualPlayer.extraction(_oPlayingCard!)
            }
        case .DRAW:
            print("Draw Phase")
            //_oActualPlayer.draw();
            _eActualTurnPhase!.next()
        case .PLAY_CARDS:
            //Unlock Input on User
            print("Play Cards Phase")
            
        case .END_TURN:
            //lock input player
            nextPlayer()
            _eActualTurnPhase!.next()
            next()
            print("End Phase")
        }
    }
    
    private func nextPlayer(){
        if (_iIndexPlayer + 1 > _aPlayers.count-1){
            _iIndexPlayer = 0
        }else{
            _iIndexPlayer += 1
        }
        _oActualPlayer = _aPlayers[_iIndexPlayer]
    }
    
    private func initDeck(){
        _aDeck = []
        _aDeck.append(CSaber(iValue: 10, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CSaber(iValue: 10, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CBlunderbuss(iValue: 11, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CBlunderbuss(iValue: 12, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CBlunderbuss(iValue: 13, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CHarquebus(iValue: 13, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CMusket(iValue: 1, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CCulverin(iValue: 8, eSuit: E_SUITS_CARD.PIKES))
        
        for iIndex in 2...9{
            _aDeck.append(CArrrgh(iValue: iIndex, eSuit: E_SUITS_CARD.CLOVERS))
        }
        for iIndex in 1...13{
            _aDeck.append(CArrrgh(iValue: iIndex, eSuit: E_SUITS_CARD.TILES))
        }
        _aDeck.append(CArrrgh(iValue: 1, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CArrrgh(iValue: 1, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CArrrgh(iValue: 12, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CArrrgh(iValue: 13, eSuit: E_SUITS_CARD.HEARTS))
        
        _aDeck.append(CMissed(iValue: 1, eSuit: E_SUITS_CARD.CLOVERS))
        for iIndex in 10...13{
            _aDeck.append(CMissed(iValue: iIndex, eSuit: E_SUITS_CARD.CLOVERS))
        }
        for iIndex in 2...8{
            _aDeck.append(CMissed(iValue: iIndex, eSuit: E_SUITS_CARD.PIKES))
        }
        for iIndex in 6...11{
            _aDeck.append(CRum(iValue: iIndex, eSuit: E_SUITS_CARD.HEARTS))
        }
        _aDeck.append(CRansack(iValue: 1, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CRansack(iValue: 11, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CRansack(iValue: 12, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CRansack(iValue: 8, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CTheMonkey(iValue: 9, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CTheMonkey(iValue: 10, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CTheMonkey(iValue: 11, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CTheMonkey(iValue: 13, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CTreasureChest(iValue: 9, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CTreasureChest(iValue: 9, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CElDorado(iValue: 3, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CCannon(iValue: 10, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CDuel(iValue: 8, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CDuel(iValue: 11, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CDuel(iValue: 12, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CKraken(iValue: 1, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CKraken(iValue: 13, eSuit: E_SUITS_CARD.TILES))
        _aDeck.append(CSeaMarket(iValue: 9, eSuit: E_SUITS_CARD.CLOVERS))
        _aDeck.append(CSeaMarket(iValue: 12, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CHarbour(iValue: 5, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CPrison(iValue: 10, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CPrison(iValue: 11, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CPrison(iValue: 4, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CExplosiveBarrel(iValue: 2, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CBarrel(iValue: 12, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CBarrel(iValue: 13, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CTelescope(iValue: 1, eSuit: E_SUITS_CARD.PIKES))
        _aDeck.append(CWindStern(iValue: 8, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.append(CWindStern(iValue: 9, eSuit: E_SUITS_CARD.HEARTS))
        _aDeck.shuffle()
    }
    
    
}
