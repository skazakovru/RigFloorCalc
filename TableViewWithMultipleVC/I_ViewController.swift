//
//  I_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 21/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

import Foundation

class I_ViewController: UIViewController {

    @IBOutlet weak var measuredLagTime: UITextField!
    @IBOutlet weak var annularVolume: UITextField!
    @IBOutlet weak var bitSize: UITextField!
    @IBOutlet weak var pumpOutput: UITextField!
    @IBOutlet weak var openHoleLength: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var switchForMeters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        if let text = measuredLagTime.text, !text.isEmpty {
             let num = NumberFormatter()
        var value1 = measuredLagTime.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = annularVolume.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = bitSize.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        var value4 = pumpOutput.text!
        if num.number(from:value4) == nil {
            value4 = value4.replacingOccurrences(of: ".", with: ",")
        }
        var value5 = openHoleLength.text!
        if num.number(from:value5) == nil {
            value5 = value5.replacingOccurrences(of: ".", with: ",")
        }
        let firstValue = Double(truncating: num.number(from: value1)!)
        let secondValue = Double(truncating: num.number(from: value2)!)
        let thirdValue = Double(truncating: num.number(from: value3)!)
        let fourthValue = Double(truncating: num.number(from: value4)!)
        let fifthValue = Double(truncating: num.number(from: value5)!)
        
        if switchForMeters.isOn {
            let outputValue = sqrt((firstValue - secondValue / fourthValue) * fourthValue * 1029.4 / fifthValue + thirdValue * thirdValue)
            
            outputTextField.text = String (format: "%.2f in", outputValue)
            
        } else {
            
            let outputValue = sqrt((firstValue - secondValue / fourthValue) * fourthValue * 1029.4 / (fifthValue * 3.281) + thirdValue * thirdValue)
            
            outputTextField.text = String (format: "%.2f in", outputValue)
        }
    }
    }
        @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {view.endEditing(true)
        }
    }

