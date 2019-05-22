//
//  A_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 19/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class A_ViewController: UIViewController {

    @IBOutlet weak var originalMWTextField: UITextField!
    @IBOutlet weak var shutIDPPtextField: UITextField!
    @IBOutlet weak var trueVDtextField: UITextField!
    @IBOutlet weak var switchTapped: UISwitch!
    @IBOutlet weak var outputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTappedButton(_ sender: Any) {


        let num = NumberFormatter()
        
        print(num.locale!)     // to test locale on iPhone
        var value = originalMWTextField.text!
        
        if num.number(from:value) == nil {
            value = value.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = trueVDtextField.text!
        if num.number(from: value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        let firstValue = Double(truncating: num.number(from:value)!)
        print(firstValue)
        let secondValue = Double(truncating: num.number(from:shutIDPPtextField.text!)!)
        let thirdValue = Double(truncating: num.number(from:value3)!)
        
        if switchTapped.isOn {
            let outputValue = secondValue * 19.23/thirdValue + firstValue
            
            outputTextField.text = String(format:"%.2f ppg. Round up if required!", outputValue)
            
        } else {
            let outputValue = secondValue * 19.23/thirdValue * 3.281 + firstValue
            
             outputTextField.text = String(format:"%.2f ppg. Round up if required!", outputValue)
        }
        }
      
    @IBAction func gestureTapped(_ sender: Any) {
        view.endEditing(true)
    }
}

