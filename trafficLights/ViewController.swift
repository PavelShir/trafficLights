//
//  ViewController.swift
//  trafficLights
//
//  Created by 19543442 on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLihgt: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var lightControllerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLihgt.layer.cornerRadius = yellowLihgt.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
       // lightControllerButton.currentTitle = ""
        
    }

    @IBAction func shangeColor() {
        redLight.alpha = 1
        lightControllerButton.setTitle("Next", for: .normal)
    }
    
}

