//
//  ViewController.swift
//  LightProjectGujar
//
//  Created by Mihir Gujar on 9/25/19.
//  Copyright © 2019 Mihir Gujar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    var greenLight = true
    var blueLight = true
    @IBOutlet weak var buttonChange: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        blueButton()
        greenButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Green(_ sender: Any) {
        greenButton()
        greenLight = !greenLight
    }
    @IBAction func Blue(_ sender: Any) {
        blueButton()
        blueLight = !blueLight
    }
    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
        lightOn = !lightOn
    }
    func blueButton () {
        if blueLight {
            view.backgroundColor = .white
        }
        else {
            view.backgroundColor = .blue
        }
    }
    func greenButton (){
        if greenLight  {
            view.backgroundColor = .white
        }
        else {
            view.backgroundColor = .green
        }
    }
    func updateUI (){
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
        
    }
    
}
