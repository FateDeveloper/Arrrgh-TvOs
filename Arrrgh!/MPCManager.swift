import Foundation
import MultipeerConnectivity

class MPCManager: NSObject {
    static public var sharedInstance : MPCManager = MPCManager()
    
    private let serviceType = "arrrgh-SERVICE"
    
    private let myPeerId = MCPeerID(displayName: UIDevice.current.name)
    
    private let serviceAdvertiser : MCNearbyServiceAdvertiser
    private let serviceBrowser : MCNearbyServiceBrowser
    private var session : MCSession
    
    private var isAdvertising_ : Bool = false
    private var isBrowsing_    : Bool = false
    private var connectedPeers : Set<MCPeerID> = []
    
    var delegate : MPCManagerDelegate?
    
    private override init(){
        
        let additionalInfo : String = "\(UIDevice.current.systemName), \(UIDevice.current.systemVersion)"
        self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerId,
                                                           discoveryInfo: ["SystemInfo" : additionalInfo], serviceType: serviceType)
        
        self.serviceBrowser = MCNearbyServiceBrowser(peer: myPeerId,
                                                     serviceType: serviceType)
        
        self.session = MCSession(peer: self.myPeerId, securityIdentity: nil, encryptionPreference: .optional)
        
        super.init()
        
        self.serviceAdvertiser.delegate = self
        self.serviceBrowser.delegate = self
        self.session.delegate = self
    }
    
    public func getMyPeerID() -> MCPeerID!{
        return myPeerId;
    }
    
    deinit {
        self.stopAdvertising()
        self.stopBrowsing()
    }
    
    public func startAdvertising(){
        self.serviceAdvertiser.startAdvertisingPeer()
    }
    
    public func stopAdvertising(){
        self.serviceAdvertiser.stopAdvertisingPeer()
    }
    
    public func isAdvertising() -> Bool {
        return self.isAdvertising_
    }
    
    public func startBrowsing(){
        self.serviceBrowser.startBrowsingForPeers()
    }
    
    public func stopBrowsing(){
        self.serviceAdvertiser.stopAdvertisingPeer()
    }
    
    public func isBrowsing() -> Bool {
        return self.isBrowsing_
    }
    
    public func addConnectedPeer(peer: MCPeerID) {
        var changed : Bool = false
        if !(self.connectedPeers.contains(peer)) {
            self.connectedPeers.insert(peer)
            changed = true
        }
        if changed {
            self.delegate?.connectedDevicesChanged(manager: self, connectedDevices: self.getConnectedPeers())
            print("[DEBUG] Added a connected peer to the list")
        }
    }
    
    public func removeConnectedPeer(peer: MCPeerID){
        var changed : Bool = false
        if (self.connectedPeers.contains(peer)) {
            self.connectedPeers.remove(peer)
            changed = true
        }
        if changed {
            self.delegate?.connectedDevicesChanged(manager: self, connectedDevices: getConnectedPeers())
            print("[DEBUG] Removed a peer from the list")
        }
    }
    
    public func getConnectedPeers() -> [MCPeerID] {
        return Array(self.connectedPeers)
    }
    
    //ADD
    public func sendData(index : String) {
        if let utfData = index.data(using: .utf8) {
            do {
                try self.session.send(utfData, toPeers: getConnectedPeers(), with: .reliable)
            } catch {
                print("[DEBUG] [FAIL] \(error)")
            }
        }
    }
    
    public func sendMPCStruct(MPCStructData : MPCStruct) {
        do {
            try self.session.send(MPCStructData.encode(), toPeers: getConnectedPeers(), with: .reliable)
        } catch {
            print("[DEBUG] [FAIL] \(error)")
        }
    }
    
}

extension MPCManager : MCNearbyServiceAdvertiserDelegate {
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error) {
        print("[DEBUG] [FAIL] didNotStartAdvertisingPeer: \(error)")
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        print("[DEBUG] didReceiveInvitationFromPeer: \(peerID)")
        
        // I accept up to 8 connections
        if (self.getConnectedPeers().count < 8) {
            // the "true" parameter bellow means I am accepting the invitation
            invitationHandler(true, self.session)
        }
    }
}

extension MPCManager : MCSessionDelegate {
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        print("[DEBUG] peer \(peerID) didChangeState: \(state.rawValue)")
        
        if (state == MCSessionState.connected) {
            print("[DEBUG] ******* Connected TO \(peerID)")
            self.addConnectedPeer(peer: peerID)
        } else if (state == MCSessionState.notConnected) {
            print("[DEBUG] ******* Disconnected from \(peerID)")
            self.removeConnectedPeer(peer: peerID)
        }
    }
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        let message: String = String(data: data, encoding: .utf8)!
        print("[DEBUG] didReceiveData: \(message), \(peerID)")
        let MPCStructData = try! JSONDecoder().decode(MPCStruct.self, from: data)
        self.delegate?.receivedMPCStruct(data: MPCStructData, fromPeer: peerID)
    }
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        print("[DEBUG] didReceiveStream")
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        print("[DEBUG] didStartReceivingResourceWithName: \(resourceName)")
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        print("[DEBUG] didFinishReceivingResourceWithName: \(resourceName)")
    }
}

extension MPCManager : MCNearbyServiceBrowserDelegate {
    
    func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error) {
        print("[DEBUG] [FAIL] didNotStartBrowsingForPeers: \(error)")
    }
    
    func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
        print("[DEBUG] foundPeer: \(peerID). ")
        if self.getConnectedPeers().contains(peerID) {
            print("[DEBUG] Invitation not sent because I am already connected to \(peerID).")
        } else {
            browser.invitePeer(peerID, to: self.session, withContext: nil, timeout: 10)
            print("[DEBUG] Invitation sent")
        }
    }
    
    func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
        print("[DEBUG] lostPeer: \(peerID)")
    }
}

protocol MPCManagerDelegate {
    func connectedDevicesChanged(manager : MPCManager, connectedDevices: [MCPeerID])
    func receivedData(data: String, fromPeer: MCPeerID)
    func receivedMPCStruct(data: MPCStruct, fromPeer: MCPeerID)
    
}


struct Message: Codable
{
    //String, URL, Bool and Date conform to Codable.
    var text: String
    var timeStamp : String
    
    init(text: String, timeStamp: String) { // default struct initializer
        self.text = text
        self.timeStamp = timeStamp
    }
    
    enum MyStructKeys: String, CodingKey { // declaring our keys
        case text = "text"
        case timeStamp = "timeStamp"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: MyStructKeys.self) // defining our (keyed) container
        let text : String = try container.decode(String.self, forKey: .text) // extracting the data
        let timeStamp : String = try container.decode(String.self, forKey: .timeStamp) // extracting the data
        self.init(text: text, timeStamp: timeStamp) // initializing our struct
    }
}



/*
 class ViewControllerQualunque: UIViewController, MultipeerDelegato {
 override func viewDidLoad() {
 
 }
 
 func hofinitodiMandareDati() {
 print("Ciao")
 }
 }
 
 protocol MultipeerDelegato {
 func hofinitodiMandareDati()
 }
 
 class MultipeerClassCustom {
 var delegate: MultipeerDelegato?
 
 func pulsantePremuto() {
 delegate?.hofinitodiMandareDati()
 }
 }
 */
