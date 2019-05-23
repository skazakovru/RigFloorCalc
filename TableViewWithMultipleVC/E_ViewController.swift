//
//  E_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 06/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class E_ViewController: UIViewController {

    @IBOutlet weak var duplexLinerID: UITextField!
    @IBOutlet weak var duplexStrokeLength: UITextField!
    @IBOutlet weak var duplexEff: UITextField!    
    @IBOutlet weak var OutputTriplex: UITextField!

    @IBOutlet weak var outputLiters: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
        if let text = duplexLinerID.text, !text.isEmpty {
        let num = NumberFormatter()
        
        var value1 = duplexLinerID.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = duplexStrokeLength.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }

        let firstValue = Double(truncating: num.number(from: value1)!)
        let secondValue = Double(truncating: num.number(from: value2)!)
        let thirdValue = Double(truncating: num.number(from: duplexEff.text!)!)

        let outputValue1 = Double (0.0002428 * firstValue * firstValue * secondValue * thirdValue / 100.0)
        
       
            OutputTriplex.text = String (format: "%.5f bbl/stk", outputValue1)
        
        let outputValue2 = outputValue1 * 158.98
        
        outputLiters.text = String (format: "%.2f liters/stk", outputValue2)
            
        }
    }
    @IBAction func gestureTapped(_ sender: Any) { view.endEditing(true)
    }
    
}
