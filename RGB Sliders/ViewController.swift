//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Bailey Ilagan on 6/22/17.
//  Copyright © 2017 Bailey Ilagan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.borderWidth = 1
        
        updateBackgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBackgroundColor() {
        let rVal = redSlider.value
        let gVal = greenSlider.value
        let bVal = blueSlider.value
        
        colorView.backgroundColor = UIColor(colorLiteralRed: rVal, green: gVal, blue: bVal, alpha: 1)
    }
    
}

