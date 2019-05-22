//
//  B_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 21/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class B_ViewController: UIViewController {

    @IBOutlet weak var slugVolumeTextField: UITextField!
    @IBOutlet weak var slWeightTextField: UITextField!
    @IBOutlet weak var mudWeightTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculateTappws(_ sender: Any) {
    
    var firstValue = Double(slugVolumeTextField.text!)
    var secondValue = Double(slWeightTextField.text!)
    var thirdValue = Double(mudWeightTextField.text!)
        
        let num = NumberFormatter()
        var value1 = slugVolumeTextField.text!
        var value2 = slWeightTextField.text!
        var value3 = mudWeightTextField.text!
        
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        firstValue = Double(truncating: num.number(from: value1)!)
        secondValue = Double(truncating: num.number(from: value2)!)
        thirdValue = Double(truncating: num.number(from: value3)!)
  
    
    if firstValue != nil && secondValue != nil && thirdValue != nil {
    
    let outputValue = Double(firstValue!*(secondValue!-thirdValue!)/thirdValue!)
    
    outputTextField.text = String(format:"%.1f bbl", outputValue)
}
}

    @IBAction func removeKeyboard(_ sender: Any) { view.endEditing(true)
    }
}
