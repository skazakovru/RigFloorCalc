//
//  J_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 23/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class J_ViewController: UIViewController {

    @IBOutlet weak var drillPipeWeight: UITextField!
    @IBOutlet weak var stretchIn: UITextField!
    @IBOutlet weak var overPull: UITextField!
    
    @IBOutlet weak var feetStuck: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        let firstValue = Double (drillPipeWeight.text!)
        let secondValue = Double (stretchIn.text!)
        let thirdValue = Double (overPull.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let calculatedValue = 735294 * secondValue! * firstValue! / thirdValue!
            
            feetStuck.text = String (format: "%.0f ft", calculatedValue)
        }
    }

    @IBAction func gesturetapped(_ sender: Any) {view.endEditing(true)
    }
}
