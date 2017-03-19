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
        let firstValue = Double (mudVolumeTextField.text!)
        let secondValue = Double (pressureAppliedTextField.text!)
        let thirdValue = Double (resultLable.text!)
   
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let outPut = "\(firstValue! * secondValue! * thirdValue!)"
            
            outputValue.text = outPut
          
        }
    }
    @IBAction func gestureTapped(_ sender: Any) {
         view.endEditing(true)
    }
}

