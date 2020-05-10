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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tap() {
        drumSound.currentTime = 0
        drumSound.play()
    }

}

