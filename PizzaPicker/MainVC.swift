//
//  MainVC.swift
//  PizzaPicker
//
//  Created by Gladys Umali on 10/26/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {

    
    @IBOutlet weak var chosenPizza: UIImageView!
    
    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chosenPizza.layer.cornerRadius = 18
        chosenPizza.clipsToBounds = true
        
        _ = Bundle.main.path(forResource: "boy", ofType: "mp3")
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
//        btnSound.play()
        
//        chosenPizza.image = 
        
    }


}

