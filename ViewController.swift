//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        playSound(withCurrentNote:sender.currentTitle!)
        sender.alpha = 0.5
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            
            sender.alpha = 1.0
            print("End")
            
        })
        
        
    }
    
    func playSound(withCurrentNote: String) {
        let url = Bundle.main.url(forResource: withCurrentNote, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    

}

