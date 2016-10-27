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
    var pizzaImages = ["pizza1", "pizza2", "pizza3", "pizza4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chosenPizza.layer.cornerRadius = 18
        chosenPizza.clipsToBounds = true
        
        _ = Bundle.main.path(forResource: "boy", ofType: "mp3")
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
//        btnSound.play()
        
        chosenPizza.isHidden = false
        
        let randomNumber = Int(arc4random_uniform(4))
        
        print("pizza\(randomNumber)")
        
        chosenPizza.image = UIImage(named: "pizza\(randomNumber)")!
    
    
    }



}

