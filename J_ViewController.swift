//
//  J_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 23/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

import Foundation

class J_ViewController: UIViewController {

    @IBOutlet weak var drillPipeWeight: UITextField!
    @IBOutlet weak var stretchIn: UITextField!
    @IBOutlet weak var overPull: UITextField!
    
    @IBOutlet weak var feetStuck: UITextField!

    @IBOutlet weak var metersStuck: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {

        
        let num = NumberFormatter()
        var value1 = drillPipeWeight.text!
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        var value2 = stretchIn.text!
        if num.number(from:value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        var value3 = overPull.text!
        if num.number(from:value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        let firstValue = Double(num.number(from: value1)!)
        let secondValue = Double(num.number(from: value2)!)
        let thirdValue = Double(num.number(from: value3)!)
        
            
            let calculatedValue = 735294 * secondValue * firstValue / thirdValue
            
            feetStuck.text = String (format: "%.0f ft", calculatedValue)
            
            let calculatedValue2 = calculatedValue / 3.281
             metersStuck.text = String (format: "%.0f meters", calculatedValue2)
        }
    

    @IBAction func gesturetapped(_ sender: Any) {view.endEditing(true)
    }
}
