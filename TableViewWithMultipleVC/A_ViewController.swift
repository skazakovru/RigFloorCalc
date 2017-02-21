//
//  A_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 19/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class A_ViewController: UIViewController {

    @IBOutlet weak var originalMWTextField: UITextField!
    @IBOutlet weak var shutIDPPtextField: UITextField!
    @IBOutlet weak var trueVDtextField: UITextField!
    @IBOutlet weak var metersTVDtextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
        let firstValue = Double(originalMWTextField.text!)
        let secondValue = Double(shutIDPPtextField.text!)
        let thirdValue = Double(trueVDtextField.text!)
        let fourthValue = Double(metersTVDtextField.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let outputValue = Double((secondValue! * 19.23)/thirdValue! + firstValue!)
            
            outputTextField.text = String(format:"%.2f", outputValue)
            
        } else if firstValue != nil && secondValue != nil && thirdValue != nil || fourthValue != nil {
            
            let outputValue = Double((secondValue! * 19.23)/(fourthValue! * 3.281) + firstValue!)
             outputTextField.text = String(format:"%.2f", outputValue)
        }
}
    @IBAction func gestureTapped(_ sender: Any) {
        view.endEditing(true)
    }

}
