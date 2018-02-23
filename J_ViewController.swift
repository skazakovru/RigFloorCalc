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
    
    @IBOutlet weak var feetStuck: UILabel!
    @IBOutlet weak var metersStuck: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {

        
        let num = NumberFormatter()
        let firstValue = Double(num.number(from:drillPipeWeight.text!)!)
        let secondValue = Double(num.number(from: stretchIn.text!)!)
        let thirdValue = Double(num.number(from: overPull.text!)!)
        
            
            let calculatedValue = 735294 * secondValue * firstValue / thirdValue
            
            feetStuck.text = String (format: "Estimated stuck at %.0f ft", calculatedValue)
            
            let calculatedValue2 = calculatedValue / 3.281
             metersStuck.text = String (format: "Estimated stuck at %.0f meters", calculatedValue2)
        }
    

    @IBAction func gesturetapped(_ sender: Any) {view.endEditing(true)
    }
}
