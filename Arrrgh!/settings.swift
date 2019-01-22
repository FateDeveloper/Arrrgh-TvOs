//
//  settings.swift
//  Arrrgh!
//
//  Created by Ciro Cozzolino on 09/01/2019.
//  Copyright © 2019 AppleFoundation. All rights reserved.
//

import Foundation
import UIKit

//COSTANTI FASI TURNO
enum E_TURN_PHASES: CaseIterable {
    case EXTRACT,DRAW,PLAY_CARDS,END_TURN
    
    mutating func next(){
        let aElements:Array<E_TURN_PHASES> = E_TURN_PHASES.allCases
        self = aElements[(aElements.index(of: self)! + 1) % aElements.count]
    }
}

enum E_ROLE_PLAYERS:Int {
    case CAPTAIN,QUARTER_MASTER,CORSAIR,RENEGADE
}

enum E_PLAYABLE_CHARACTERS: CaseIterable{
    case ROBERT_BLAKE,EDWARD_TEACH,BARTHOLOMEW_ROBERTS,ARUJ_BARBAROSSA,JOHN_NEWGATE,FRANCIS_DRAKE,JEANNE_DE_BELLEVILLE,GRACE_O_MALLEY,ANNE_BONNY,MARY_READ
    case CHING_SHIH,MARIA_LINDSEY,SAYYIDA_AL_HURRA,ZHENG_YI,ERIC_COBHAM,GERTRUDE_IMOGENE_STUBBS
    
    func getString() -> String{
        switch self{
        case .ROBERT_BLAKE:
            return "ROBERT_BLAKE"
        case .EDWARD_TEACH:
            return "EDWARD_TEACH"
        case .BARTHOLOMEW_ROBERTS:
            return "BARTHOLOMEW_ROBERTS"
        case .ARUJ_BARBAROSSA:
            return "ARUJ_BARBAROSSA"
        case .JOHN_NEWGATE:
            return "JOHN_NEWGATE"
        case .FRANCIS_DRAKE:
            return "FRANCIS_DRAKE"
        case .JEANNE_DE_BELLEVILLE:
            return "JEANNE_DE_BELLEVILLE"
        case .GRACE_O_MALLEY:
            return "GRACE_O_MALLEY"
        case .ANNE_BONNY:
            return "ANNE_BONNY"
        case .MARY_READ:
            return "MARY_READ"
        case .CHING_SHIH:
            return "CHING_SHIH"
        case .MARIA_LINDSEY:
            return "MARIA_LINDSEY"
        case .SAYYIDA_AL_HURRA:
            return "SAYYIDA_AL_HURRA"
        case .ZHENG_YI:
            return "ZHENG_YI"
        case .ERIC_COBHAM:
            return "ERIC_COBHAM"
        case .GERTRUDE_IMOGENE_STUBBS:
            return "GERTRUDE_IMOGENE_STUBBS"
        }
    }
    
    func getRawValue() -> Int{
        for i in 0...E_PLAYABLE_CHARACTERS.allCases.count - 1{
            if E_PLAYABLE_CHARACTERS.allCases[i] == self{
                return i
            }
        }
        return -1
    }
}

enum E_CARDS:Int{
    case BARREL,EXPLOSIVE_BARREL,TELESCOPE,WIND_STERN,PRISON,BLUNDERBUSS,HARQUEBUS,MUSKET,CULVERIN,SABER,ARRRGH,RUM,THE_MONKEY,TREASURE_CHEST,DUEL
    case SEA_MARKET,CANNON,KRAKEN,RANSACK,HARBOUR,EL_DORADO,MISSED
    
    func getString() -> String{
        switch self{
            case .BARREL:
                return "BARREL"
            case .EXPLOSIVE_BARREL:
                    return "EXPLOSIVE_BARREL"
            case .TELESCOPE:
                    return "TELESCOPE"
            case .WIND_STERN:
                    return "WIND_STERN"
            case .PRISON:
                    return "PRISON"
            case .BLUNDERBUSS:
                    return "BLUNDERBUSS"
            case .HARQUEBUS:
                    return "HARQUEBUS"
            case .MUSKET:
                    return "MUSKET"
            case .CULVERIN:
                    return "CULVERIN"
            case .SABER:
                    return "SABER"
            case .ARRRGH:
                    return "ARRRGH"
            case .RUM:
                    return "RUM"
            case .THE_MONKEY:
                    return "THE_MONKEY"
            case .TREASURE_CHEST:
                    return "TREASURE_CHEST"
            case .DUEL:
                    return "DUEL"
            case .SEA_MARKET:
                    return "SEA_MARKET"
            case .CANNON:
                    return "CANNON"
            case .KRAKEN:
                    return "KRAKEN"
            case .RANSACK:
                    return "RANSACK"
            case .HARBOUR:
                    return "HARBOUR"
            case .EL_DORADO:
                    return "EL_DORADO"
            case .MISSED:
                    return "MISSED"
        }
    }
}

enum E_SUITS_CARD:Int{
    case PIKES,CLOVERS,TILES,HEARTS
}

enum E_TYPE_CARDS{
    case PLAYABLE,WEAPON,EQUIPMENT
}

enum E_GRAPHIC_ANIMATIONS{
    case DRAW,EXTRACT,PLAY,EQUIP
}

extension UIView {
     class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

struct MPCStruct: Codable {
    var _szToUser:String
    var _szCommand:String
    var _aCards:CardStructLite?
    var _aPlayers:UserStructLite?
    static func decode(dataStruct: Data) -> MPCStruct {
        return try! JSONDecoder().decode(MPCStruct.self, from: dataStruct)
    }
    
    func encode() -> Data {
        return try! JSONEncoder().encode(self)
    }
}

struct CardStructLite:Codable{
    var _ePlayableCard:Int
    var _iValue:Int
    var _eSuit:Int
    
    static func decode(dataStruct: Data) -> CardStructLite {
        return try! JSONDecoder().decode(CardStructLite.self, from: dataStruct)
    }
    
    func encode() -> Data {
        return try! JSONEncoder().encode(self)
    }
}

struct UserStructLite:Codable{
    var _eCharacter:Int
    var _szPeerID:String
    var _eRolePlayer:Int
    var _iCurrentLife:Int
    var _aHandCards:Array<CardStructLite>?
    var _aGroundCards:Array<CardStructLite>?
    
    static func decode(dataStruct: Data) -> UserStructLite {
        return try! JSONDecoder().decode(UserStructLite.self, from: dataStruct)
    }
    
    func encode() -> Data {
        return try! JSONEncoder().encode(self)
    }
}
