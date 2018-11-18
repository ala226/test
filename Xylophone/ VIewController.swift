//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    
    
   var xyloSound: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: "note\(sender.tag).wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            xyloSound = try AVAudioPlayer(contentsOf: url)
            xyloSound?.play()
        } catch {
          
        }
        
    }
    
  

}

