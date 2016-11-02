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
    
//    var audioPlayer = AVAudioPlayer()
    
    var boySound: AVAudioPlayer!
    
    var pizzaImages = ["pizza1", "pizza2", "pizza3", "pizza4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chosenPizza.layer.cornerRadius = 18
        chosenPizza.clipsToBounds = true
        
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
//        // Set the sound file name & extension
//        var btnSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "boy", ofType: "mp3")!)
//        
//        // Preparation
//        AVAudioSession.sharedInstance.setCategory(AVAudioSessionCategoryPlayback, error:nil)
//        AVAudioSession.sharedInstance.setActive(true, error: nil)
//        
//        // Play the sound
//        var error: NSError?
//        audioPlayer = AVAudioPlayer(contentsOf: (btnSound as NSURL) as URL)
//        audioPlayer.prepareToPlay()
//        audioPlayer.play()
        
        
        
        let path = Bundle.main.path(forResource: "boy.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            boySound = sound
            sound.play()
        } catch {
            //coudn't load file
        }
        
        chosenPizza.isHidden = false
        
        let randomNumber = Int(arc4random_uniform(4))
        
        print("pizza\(randomNumber)")
        
        chosenPizza.image = UIImage(named: "pizza\(randomNumber)")!
    
    
    }



}

