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
    
    let firstValue = Double(slugVolumeTextField.text!)
    let secondValue = Double(slWeightTextField.text!)
    let thirdValue = Double(mudWeightTextField.text!)
  
    
    if firstValue != nil && secondValue != nil && thirdValue != nil {
    
    let outputValue = Double(firstValue!*(secondValue!-thirdValue!)/thirdValue!)
    
    outputTextField.text = String(format:"%.2f", outputValue)
}
}

    @IBAction func removeKeyboard(_ sender: Any) { view.endEditing(true)
    }
}
