//
//  D_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 27/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class D_ViewController: UIViewController {

    @IBOutlet weak var pipeIDTextField: UITextField!
    @IBOutlet weak var pipeODTextField: UITextField!
    @IBOutlet weak var feetStandLengthTextField: UITextField!
    
    @IBOutlet weak var tappedSwitch1: UISwitch!
    @IBOutlet weak var openEndBblStdTextField: UITextField!
    @IBOutlet weak var closeEndBblStdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
    
        
        let num = NumberFormatter()
        var value1 = pipeIDTextField.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = pipeODTextField.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = feetStandLengthTextField.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        let firstValue = Double(truncating: num.number (from: value1)!)
        let secondValue = Double(truncating: num.number(from: value2)!)
        let thirdValue = Double(truncating: num.number(from: value3)!)

        if tappedSwitch1.isOn {
            
            let calculatedValue1 = secondValue * 0.0003638 * thirdValue
        
            let calculatedValue2 = firstValue * firstValue * 0.0009714 * thirdValue + calculatedValue1
        
        openEndBblStdTextField.text = String (format: "%.1f bbl", calculatedValue1)
        closeEndBblStdTextField.text = String (format: "%.1f bbl", calculatedValue2)
      } else {
            
            let calculatedValue3 = secondValue * 0.0003638 * thirdValue * 3.281
            
            let calculatedValue4 = firstValue * firstValue * 0.0009714 * thirdValue * 3.281 + calculatedValue3
            
            openEndBblStdTextField.text = String (format: "%.1f bbl", calculatedValue3)
            closeEndBblStdTextField.text = String (format: "%.1f bbl", calculatedValue4)
        }
        
        }

    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }
}


