//
//  ViewController.swift
//  Arrrgh!
//
//  Created by Gennaro Frate on 15/01/2019.
//  Copyright © 2019 Gennaro Frate. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class GameViewController: UIViewController,MPCManagerDelegate {
    
    
    //Outlet of View for each Player
    let _oMultiPeer = MPCManager.sharedInstance
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var containerView3: UIView!
    @IBOutlet weak var containerView4: UIView!
    @IBOutlet weak var containerView5: UIView!
    @IBOutlet weak var containerView6: UIView!
    @IBOutlet weak var containerView7: UIView!
    
    //Test label for number of Player
    
    public var _iNumPlayers:Int?
    private var _aPlayersView:Array<PlayerView>?
    public var _aPlayersPeerID:Array<String> = []
    private var _oGameManager:CGameManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _oMultiPeer.delegate = self
        
        _iNumPlayers = 7
        _aPlayersView = []
        switch _iNumPlayers{
        case 4:
            let myCustomView1: PlayerView = UIView.fromNib()
            let myCustomView2: PlayerView = UIView.fromNib()
            let myCustomView3: PlayerView = UIView.fromNib()
            let myCustomView4: PlayerView = UIView.fromNib()
            containerView1.isHidden = true
            containerView2.addSubview(myCustomView1)
            containerView3.addSubview(myCustomView2)
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.addSubview(myCustomView3)
            containerView7.addSubview(myCustomView4)
            _aPlayersView!.append(myCustomView1)
            _aPlayersView!.append(myCustomView2)
            _aPlayersView!.append(myCustomView3)
            _aPlayersView!.append(myCustomView4)
        case 5:
            let myCustomView1: PlayerView = UIView.fromNib()
            let myCustomView2: PlayerView = UIView.fromNib()
            let myCustomView3: PlayerView = UIView.fromNib()
            let myCustomView4: PlayerView = UIView.fromNib()
            let myCustomView5: PlayerView = UIView.fromNib()
            containerView1.addSubview(myCustomView1)
            containerView2.addSubview(myCustomView2)
            containerView3.addSubview(myCustomView3)
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.addSubview(myCustomView4)
            containerView7.addSubview(myCustomView5)
            _aPlayersView!.append(myCustomView1)
            _aPlayersView!.append(myCustomView2)
            _aPlayersView!.append(myCustomView3)
            _aPlayersView!.append(myCustomView4)
            _aPlayersView!.append(myCustomView5)
        case 6:
            let myCustomView1: PlayerView = UIView.fromNib()
            let myCustomView2: PlayerView = UIView.fromNib()
            let myCustomView3: PlayerView = UIView.fromNib()
            let myCustomView4: PlayerView = UIView.fromNib()
            let myCustomView5: PlayerView = UIView.fromNib()
            let myCustomView6: PlayerView = UIView.fromNib()
            containerView1.addSubview(myCustomView1)
            containerView2.addSubview(myCustomView2)
            containerView3.addSubview(myCustomView3)
            containerView4.addSubview(myCustomView4)
            containerView5.isHidden = true
            containerView6.addSubview(myCustomView5)
            containerView7.addSubview(myCustomView6)
            _aPlayersView!.append(myCustomView1)
            _aPlayersView!.append(myCustomView2)
            _aPlayersView!.append(myCustomView3)
            _aPlayersView!.append(myCustomView4)
            _aPlayersView!.append(myCustomView5)
            _aPlayersView!.append(myCustomView6)
        default:
            let myCustomView1: PlayerView = UIView.fromNib()
            let myCustomView2: PlayerView = UIView.fromNib()
            let myCustomView3: PlayerView = UIView.fromNib()
            let myCustomView4: PlayerView = UIView.fromNib()
            let myCustomView5: PlayerView = UIView.fromNib()
            let myCustomView6: PlayerView = UIView.fromNib()
            let myCustomView7: PlayerView = UIView.fromNib()
            containerView1.addSubview(myCustomView1)
            containerView2.addSubview(myCustomView2)
            containerView3.addSubview(myCustomView3)
            containerView4.addSubview(myCustomView4)
            containerView5.addSubview(myCustomView5)
            containerView6.addSubview(myCustomView6)
            containerView7.addSubview(myCustomView7)
            _aPlayersView!.append(myCustomView1)
            _aPlayersView!.append(myCustomView2)
            _aPlayersView!.append(myCustomView3)
            _aPlayersView!.append(myCustomView4)
            _aPlayersView!.append(myCustomView5)
            _aPlayersView!.append(myCustomView6)
            _aPlayersView!.append(myCustomView7)
        }
        
    _oGameManager = CGameManager(aPeerIDs: _aPlayersPeerID, aPlayersView: _aPlayersView!)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        _oMultiPeer.delegate = self
    }
    
    func connectedDevicesChanged(manager: MPCManager, connectedDevices: [MCPeerID]) {
        
    }
    
    func receivedData(data: String, fromPeer: MCPeerID) {
        
    }
    
    func receivedMPCStruct(data: MPCStruct, fromPeer: MCPeerID) {
        
    }
    
}

