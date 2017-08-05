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
    @IBOutlet weak var ouputLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        let firstValue = Double (measuredLagTime.text!)
        let secondValue = Double (annularVolume.text!)
        let thirdValue = Double (bitSize.text!)
        let fourthValue = Double (pumpOutput.text!)
        let fifthValue = Double (openHoleLength.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && firstValue != nil {
            
            let outputValue = sqrt((firstValue! - secondValue! / fourthValue!) * fourthValue! * 1029.4 / fifthValue! + thirdValue! * thirdValue!)
            
            ouputLable.text = String (format: "%.2f in", outputValue)
        }
        
        
    }
    @IBAction func gestureTapped(_ sender: Any) {view.endEditing(true)
    }
}
