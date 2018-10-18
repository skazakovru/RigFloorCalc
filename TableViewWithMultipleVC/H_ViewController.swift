//
//  H_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 19/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class H_ViewController: UIViewController {

    @IBOutlet weak var shoeTVD: UITextField!
    @IBOutlet weak var mudWeight: UITextField!
    @IBOutlet weak var targetFIT: UITextField!    
    @IBOutlet weak var outputAppliedPressure: UILabel!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var switchForMetersTapped: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        
        let num = NumberFormatter()
        var value1 = shoeTVD.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = mudWeight.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = targetFIT.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        let firstValue = Double(num.number(from: value1)!)
        let secondValue = Double(num.number(from: value2)!)
        let thirdValue = Double(num.number(from: value3)!)
        
        if switchForMetersTapped.isOn {
            
            let outputValue = 0.052 * firstValue * (thirdValue - secondValue)
            
            outputTextField.text = String (format: "%.0f psi", outputValue)
        
        } else {
            let outputValue = 0.052 * firstValue * 3.281 * (thirdValue - secondValue)
            
            outputTextField.text = String (format: "%.0f psi", outputValue)
        }
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

}
