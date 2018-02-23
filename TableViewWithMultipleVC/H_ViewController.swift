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
        let firstValue = Double(num.number(from:shoeTVD.text!)!)
        let secondValue = Double(num.number(from: mudWeight.text!)!)
        let thirdValue = Double(num.number(from: targetFIT.text!)!)
        
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
