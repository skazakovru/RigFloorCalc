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
        
           let num = NumberFormatter()
        let firstValue = Double(num.number(from: duplexLinerID.text!)!)
        let secondValue = Double(num.number(from: duplexStrokeLength.text!)!)
        let thirdValue = Double(num.number(from: duplexEff.text!)!)

        let outputValue1 = Double (0.0002428 * firstValue * firstValue * secondValue * thirdValue / 100)
        
       
            OutputTriplex.text = String (format: "%.5f bbl/stk", outputValue1)
        
        let outputValue2 = outputValue1 * 158.98
        
        outputLiters.text = String (format: "%.2f liters/stk", outputValue2)
            
        }

    @IBAction func gestureTapped(_ sender: Any) { view.endEditing(true)
    }
    
}
