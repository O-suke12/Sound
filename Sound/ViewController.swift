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
    @IBOutlet var drumButton: UIButton!
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
}

