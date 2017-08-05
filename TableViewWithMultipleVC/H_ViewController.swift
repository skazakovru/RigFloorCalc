//
//  H_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 19/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class H_ViewController: UIViewController {

    @IBOutlet weak var shoeTVD: UITextField!
    
    @IBOutlet weak var mudWeight: UITextField!
    
    @IBOutlet weak var targetFIT: UITextField!
    
    @IBOutlet weak var outputAppliedPressure: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        let firstValue = Double (shoeTVD.text!)
        let secondValue = Double (mudWeight.text!)
        let thirdValue = Double (targetFIT.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let outputValue = 0.052 * firstValue! * (thirdValue! - secondValue!)
            
            outputAppliedPressure.text = String (format: "%.0f psi", outputValue)
        }
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

}
