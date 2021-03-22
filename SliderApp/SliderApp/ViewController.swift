//
//  ViewController.swift
//  SliderApp
//
//  Created by Sherry Cannizzo on 3/21/21.
//  Copyright © 2021 Giuseppe Cannizzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelValue: UILabel!
    
    @IBOutlet var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeSlider(_ sender: UIButton) {
        sliderValue.minimumValue = 1
        sliderValue.maximumValue = 25
        sliderValue.value = 7
        sliderValue.minimumTrackTintColor = UIColor.red
        sliderValue.maximumTrackTintColor = UIColor.green
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelValue.text = "\(sliderValue.value)"
    }
}

