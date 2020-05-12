//
//  ViewController.swift
//  Sound
//
//  Created by RS on 2020/05/10.
//  Copyright © 2020 osuke. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let drumSound = try!AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    let pianoSound = try!AVAudioPlayer(data: NSDataAsset(name: "piano_sound")!.data)
    let guitarSound = try!AVAudioPlayer(data: NSDataAsset(name: "guitar_sound")!.data)
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var piano: UIButton!
    @IBOutlet var guitar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapbuttondrum() {
        drumButton.setImage(UIImage(named: "drum_playing_image"), for: .normal)
        drumSound.currentTime = 0
        drumSound.play()
    }
    
    @IBAction func touchUp() {
        drumButton.setImage(UIImage(named: "drum_image"), for: .normal)
    }

    @IBAction func pianotouch() {
        piano.setImage(UIImage(named: "piano_image.png"), for: .normal)
    }
    
    @IBAction func guitartouch() {
        guitar.setImage(UIImage(named: "guitar_image.png"), for: .normal)
    }
    
    @IBAction func pianoDown() {
        piano.setImage(UIImage(named: "piano_playing_image.png"), for: .normal)
        pianoSound.currentTime = 0
        pianoSound.play()
    }
    
    @IBAction func guitarDown() {
        guitar.setImage(UIImage(named: "guitar_playing_image.png"), for: .normal)
        guitarSound.currentTime = 0
        guitarSound.play()
    }
    
    
    
}

