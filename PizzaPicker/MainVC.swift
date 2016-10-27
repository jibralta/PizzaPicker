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
    var images = [UIImageView]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        chosenPizza.layer.cornerRadius = 18
        chosenPizza.clipsToBounds = true
        
        _ = Bundle.main.path(forResource: "boy", ofType: "mp3")
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
//        btnSound.play()
        
//        chosenPizza.image = 
        
        for x in 0...3 {
            let image = UIImage(named: "pizza\(x)")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
        }
        
//        chosenPizza.image = 
        
        let image = UIImage(named: "pizza4")
        chosenPizza.image = image
        
    }
    
    



}

