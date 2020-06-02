//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Дубынин Семён on 02.06.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    let catSound = SimpleSound(named: "cat")
    let dogSound = SimpleSound(named: "dog")
    let cowSound = SimpleSound(named: "cow")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func catButtonDidPressed(_ sender: UIButton) {
        animalSoundLabel.text = "Meow"
        catSound.play()
    }
    @IBAction func dogButtonDidPressed(_ sender: UIButton) {
        animalSoundLabel.text = "Woof"
        dogSound.play()
    }
    @IBAction func cowButtonDidPressed(_ sender: UIButton) {
        animalSoundLabel.text = "Mooo"
        cowSound.play()
    }
}

