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
        let firstValue = Double (pipeIDTextField.text!)
        let secondValue = Double (pipeODTextField.text!)
        let thirdValue = Double (feetStandLengthTextField.text!)

        
      if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let calculatedValue1 = Double (secondValue! * 0.0003638 * thirdValue!)
        
            let calculatedValue2 = Double ((firstValue! * firstValue! * 0.0009714 * thirdValue!) + calculatedValue1)
        
            openEndBblStdTextField.text = String (format: "%.2f", calculatedValue1)
            closeEndBblStdTextField.text = String (format: "%.2f", calculatedValue2)
            
        }
        
    }

}
