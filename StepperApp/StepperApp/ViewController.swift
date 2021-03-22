//
//  ViewController.swift
//  StepperApp
//
//  Created by Sherry Cannizzo on 3/21/21.
//  Copyright © 2021 Giuseppe Cannizzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelValue: UILabel!
    
    @IBOutlet var stepperValue: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelValue.text = "\(stepperValue.value)"
    }
    
    @IBAction func changeStepper(_ sender: UIButton) {
        stepperValue.minimumValue = -10
        stepperValue.maximumValue = -5
        stepperValue.stepValue = 0.5
        stepperValue.isContinuous = true
        stepperValue.autorepeat = true
        stepperValue.wraps = true
    }
}

