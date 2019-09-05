//
//  ViewController.swift
//  tipcalculator
//
//  Created by sam laitha on 8/26/19.
//  Copyright © 2019 sam laitha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlets and variables
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var tipLab: UILabel!
    @IBOutlet weak var totalLab: UILabel!
    
    @IBOutlet weak var pControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputField.becomeFirstResponder()
    }
    //actions and methods
    @IBAction func calTip(_ sender: Any) {
        let tipPercent = [0.15, 0.20, 0.25]
        let bill = Double(inputField.text!) ?? 0
        let tip = (bill * tipPercent[pControl.selectedSegmentIndex])
        let total = tip + bill
        tipLab.text = String(format: "$%.2f",tip)
        totalLab.text = String(format: "$%.2f",total)
    }
    

}

