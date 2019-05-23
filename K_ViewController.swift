//
//  K_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 27/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

import Foundation

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
        if let text = annCap.text, !text.isEmpty {
        let num = NumberFormatter()
        var value1 = annCap.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = lightFluidAddedBbl.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = addedFluidWeight.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        var value4 = originalMudWeight.text!
        if num.number(from:value4) == nil {
            value4 = value4.replacingOccurrences(of: ".", with: ",")
        }
        var value5 = trueVerticalDepth.text!
        if num.number(from:value5) == nil {
            value5 = value5.replacingOccurrences(of: ".", with: ",")
        }
        
        let firstValue = Double(truncating: num.number(from: value1)!)
        let secondValue = Double(truncating: num.number(from: value2)!)
        let thirdValue = Double(truncating: num.number(from: value3)!)
        let fourthValue = Double(truncating: num.number(from: value4)!)
        let fifthValue = Double(truncating: num.number(from: value5)!)
        
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
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
        
    }
    
}
