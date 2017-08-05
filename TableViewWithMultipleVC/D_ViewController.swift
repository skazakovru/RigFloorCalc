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
    @IBOutlet weak var openEndBblStdTextField: UITextField!
    @IBOutlet weak var closeEndBblStdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
        var firstValue = Double (pipeIDTextField.text!)
        var secondValue = Double (pipeODTextField.text!)
        var thirdValue = Double (feetStandLengthTextField.text!)
        
        let numberFormatter = NumberFormatter()
        firstValue = Double(numberFormatter.number(from: pipeIDTextField.text!)!)
        secondValue = Double(numberFormatter.number(from: pipeODTextField.text!)!)
        thirdValue = Double(numberFormatter.number(from: feetStandLengthTextField.text!)!)

        
      if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let calculatedValue1 = secondValue! * 0.0003638 * thirdValue!
        
            let calculatedValue2 = firstValue! * firstValue! * 0.0009714 * thirdValue! + calculatedValue1
        
            openEndBblStdTextField.text = String (format: "%.3f bbl", calculatedValue1)
            closeEndBblStdTextField.text = String (format: "%.3f bbl", calculatedValue2)
            
        }
        
    }

    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

    }



