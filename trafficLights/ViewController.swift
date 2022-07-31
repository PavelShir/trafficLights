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
    
    var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLihgt.layer.cornerRadius = yellowLihgt.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
    }

    @IBAction func shangeColor() {
        
        switch counter {
        case 1:
            redLight.alpha = 1
            lightControllerButton.setTitle("Next", for: .normal)
            counter += 1
        case 2:
            yellowLihgt.alpha = 1
            redLight.alpha = 0.4
            counter += 1
        case 3:
            greenLight.alpha = 1
            yellowLihgt.alpha = 0.4
            counter += 1
        default:
            if counter > 3 {
                greenLight.alpha = 0.4
                lightControllerButton.setTitle("Start", for: .normal)
                counter = 1
            }
            
        }
        
    }
    
}

