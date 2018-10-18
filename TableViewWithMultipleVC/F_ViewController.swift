//
//  F_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 12/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class F_ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mudVolumeTextField: UITextField!
    @IBOutlet weak var pressureAppliedTextField: UITextField!
    @IBOutlet weak var outputValue: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultLable.text? = "0.0000045"
        case 1:
            resultLable.text? = "0.0000030"
            
        default:
            break
        }
        
    }
    @IBAction func calculateTapped(_ sender: Any) {
        
        let num = NumberFormatter()
        var value1 = mudVolumeTextField.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        
        var value2 = pressureAppliedTextField.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = resultLable.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
     
        let firstValue = Double(num.number(from: value1)!)
        let secondValue = Double(num.number(from: value2)!)
        let thirdValue = Double(num.number(from: value3)!)
        
            let outPut = Double(firstValue * secondValue * thirdValue)
            
            outputValue.text = String (format: "%.1f bbl", outPut)
    }

    @IBAction func gestureTapped(_ sender: Any) {
         view.endEditing(true)
    }
}

