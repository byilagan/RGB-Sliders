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
        
        let defaults = UserDefaults.standard
        redSlider.value = defaults.float(forKey: "red")
        greenSlider.value = defaults.float(forKey: "green")
        blueSlider.value = defaults.float(forKey: "blue")
        
        updateBackgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "openColor") {
            let newViewController = segue.destination
            newViewController.view.backgroundColor = colorView.backgroundColor
        }
    }

    @IBAction func updateBackgroundColor() {
        let rVal = redSlider.value
        let gVal = greenSlider.value
        let bVal = blueSlider.value
        
        colorView.backgroundColor = UIColor(colorLiteralRed: rVal, green: gVal, blue: bVal, alpha: 1)
        
        let defaults = UserDefaults.standard  //1
        defaults.set(redSlider.value, forKey: "red")   //2
        defaults.set(greenSlider.value, forKey: "green")
        defaults.set(blueSlider.value, forKey: "blue")
        defaults.synchronize()    //3
    }
    
}

