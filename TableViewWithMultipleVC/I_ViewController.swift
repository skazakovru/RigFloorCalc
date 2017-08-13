//
//  I_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 21/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class I_ViewController: UIViewController {

    @IBOutlet weak var measuredLagTime: UITextField!
    @IBOutlet weak var annularVolume: UITextField!
    @IBOutlet weak var bitSize: UITextField!
    @IBOutlet weak var pumpOutput: UITextField!
    @IBOutlet weak var openHoleLength: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var switchForMeters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        
             let num = NumberFormatter()
        let firstValue = Double(truncating: num.number(from:measuredLagTime.text!)!)
        let secondValue = Double(truncating: num.number(from:annularVolume.text!)!)
        let thirdValue = Double(truncating: num.number(from: bitSize.text!)!)
        let fourthValue = Double(truncating: num.number(from: pumpOutput.text!)!)
        let fifthValue = Double(truncating: num.number(from: openHoleLength.text!)!)
        
        if switchForMeters.isOn {
            let outputValue = sqrt((firstValue - secondValue / fourthValue) * fourthValue * 1029.4 / fifthValue + thirdValue * thirdValue)
            
            outputTextField.text = String (format: "%.2f in", outputValue)
            
        } else {
            
            let outputValue = sqrt((firstValue - secondValue / fourthValue) * fourthValue * 1029.4 / (fifthValue * 3.281) + thirdValue * thirdValue)
            
            outputTextField.text = String (format: "%.2f in", outputValue)
        }
    }
    @IBAction func gestureTapped(_ sender: Any) {view.endEditing(true)
    }
}
