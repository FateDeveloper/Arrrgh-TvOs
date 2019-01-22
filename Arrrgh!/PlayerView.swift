//
//  PlayerView.swift
//  Arrrgh!
//
//  Created by Gennaro Frate on 16/01/2019.
//  Copyright © 2019 Gennaro Frate. All rights reserved.
//

import UIKit

class PlayerView: UIView {

    //Label player name
    @IBOutlet weak var charName: UILabel!
    
    //Label fire distance
    @IBOutlet weak var distLab: UILabel!
    
    //Image View of Character and Weapon of Player
    @IBOutlet weak var PG_img: UIImageView!
    @IBOutlet weak var WP_img: UIImageView!
   
    //Image View of Equipment of Player
    @IBOutlet var equipments: [UIImageView]!
    
    //Collection of lifes
    @IBOutlet var lifes: [UIImageView]!
    
    //Test for removing lifes of player
    var numLife: Int = 2
    
    
    func initLife (life:Int) {
        if (life != 5){
            for iIndex in life...4{
                lifes[iIndex].isHidden = true
            }
        }
    }
    
    func initPlayerImage(oImage:UIImage?){
        if (oImage != nil){
            PG_img.image = oImage
        }
    }

}
