//
//  MainViewController.swift
//  Arrrgh!
//
//  Created by Ciro Cozzolino on 18/01/2019.
//  Copyright © 2019 Gennaro Frate. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class MainViewController: UIViewController,MPCManagerDelegate {

    @IBOutlet var _aLabels: [UILabel]!
    let _oMultipeer = MPCManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

    _oMultipeer.delegate = self
    _oMultipeer.startAdvertising()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        _oMultipeer.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let oStartGameSegue = segue.destination as! GameViewController
        //oStartGameSegue._aPlayersPeerID.append(_oMultipeer.getConnectedPeers().)
        
        for iIndex in 0..._oMultipeer.getConnectedPeers().count-1{
            oStartGameSegue._aPlayersPeerID.append(_oMultipeer.getConnectedPeers()[iIndex].displayName)
        }
    }
    
    func connectedDevicesChanged(manager: MPCManager, connectedDevices: [MCPeerID]) {
        for iIndex in 0..._aLabels.count-1{
            _aLabels[iIndex].text = "Waiting..."
        }
        for iIndex in 0...connectedDevices.count-1{
            _aLabels[iIndex].text = connectedDevices[iIndex].displayName
        }
    }
    
    func receivedData(data: String, fromPeer: MCPeerID) {
        
    }
    
    func receivedMPCStruct(data: MPCStruct, fromPeer: MCPeerID) {
        
    }

}
