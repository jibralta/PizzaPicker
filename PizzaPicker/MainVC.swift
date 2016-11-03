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
    
    var boySound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chosenPizza.layer.cornerRadius = 18
        chosenPizza.clipsToBounds = true
        
    }
    
    var previousNumber: UInt32?
    var randomNumber: UInt32?

    
    func nonConsecutiveRandom() -> UInt32 {
        
        randomNumber = arc4random_uniform(4)
        
        while randomNumber == previousNumber {
            randomNumber = arc4random_uniform(4)
        }
        
        return randomNumber!
    }


    @IBAction func buttonPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "boy.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            boySound = sound
            sound.play()
        } catch {
            //coudn't load file
            print("no audio file found")
        }
        
        chosenPizza.isHidden = false
        
        previousNumber = randomNumber
        chosenPizza.image = UIImage(named: "pizza\(nonConsecutiveRandom())")!

        print(nonConsecutiveRandom())
    
    }
    
}



