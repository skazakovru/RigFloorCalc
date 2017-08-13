//
//  K_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 27/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class K_ViewController: UIViewController {
    
    @IBOutlet weak var annCap: UITextField!
    @IBOutlet weak var lightFluidAddedBbl: UITextField!
    @IBOutlet weak var addedFluidWeight: UITextField!
    @IBOutlet weak var originalMudWeight: UITextField!
    
    @IBOutlet weak var switchOffForMeters: UISwitch!
    @IBOutlet weak var bhpDecrease: UITextField!
    @IBOutlet weak var trueVerticalDepth: UITextField!
    
    @IBOutlet weak var equivalentMudWeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateBtnTapped(_ sender: Any) {
        
        let num = NumberFormatter()
        let firstValue = Double(truncating: num.number(from:annCap.text!)!)
        let secondValue = Double(truncating: num.number(from:lightFluidAddedBbl.text!)!)
        let thirdValue = Double(truncating: num.number(from: addedFluidWeight.text!)!)
        let fourthValue = Double(truncating: num.number(from: originalMudWeight.text!)!)
        let fifthValue = Double(truncating: num.number(from: trueVerticalDepth.text!)!)
        
        if switchOffForMeters.isOn {
            
            let outputValue1 = Double (0.052 * (fourthValue - thirdValue) * (secondValue / firstValue))
            
            bhpDecrease.text = String (format: "%.0f psi", outputValue1)
            
            let outputValue2 = Double (fourthValue - (outputValue1 * 19.23 / fifthValue))
            
            equivalentMudWeight.text = String (format: "%.2f ppg", outputValue2)
            
        } else {
            let outputValue1 = Double (0.052 * (fourthValue - thirdValue) * (secondValue / firstValue ))
            
            bhpDecrease.text = String (format: "%.0f psi", outputValue1)
            
            let outputValue2 = Double (fourthValue - (outputValue1 * 19.23 / (fifthValue * 3.281)))
            
            equivalentMudWeight.text = String (format: "%.2f ppg", outputValue2)
        }
    }
    
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
        
    }
    
}
