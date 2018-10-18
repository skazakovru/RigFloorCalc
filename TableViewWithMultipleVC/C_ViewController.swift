//
//  C_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 24/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class C_ViewController: UIViewController {

    @IBOutlet weak var drillPipeID: UITextField!
    @IBOutlet weak var slugVolume: UITextField!
    @IBOutlet weak var slugWeight: UITextField!
    @IBOutlet weak var mudWeight: UITextField!
    @IBOutlet weak var feetDropLevel: UITextField!
    @IBOutlet weak var metersDropLevel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func calculateTappedButton(_ sender: Any) {
        var firstValue = Double(drillPipeID.text!)
        var secondValue = Double(slugVolume.text!)
        var thirdValue = Double(slugWeight.text!)
        var fourthValue = Double(mudWeight.text!)
        
    let num = NumberFormatter()
        
        var value1 = drillPipeID.text!
        var value2 = slugVolume.text!
        var value3 = slugWeight.text!
        var value4 = mudWeight.text!
        
        if num.number(from:value1) == nil {
            value1 = value1.replacingOccurrences(of: ".", with: ",")
        }
        if num.number(from: value2) == nil {
            value2 = value2.replacingOccurrences(of: ".", with: ",")
        }
        if num.number(from: value3) == nil {
            value3 = value3.replacingOccurrences(of: ".", with: ",")
        }
        if num.number(from: value4) == nil {
            value4 = value4.replacingOccurrences(of: ".", with: ",")
        }
        
        firstValue = Double(num.number(from: value1)!)
        secondValue = Double(num.number(from: value2)!)
        thirdValue = Double(num.number(from: value3)!)
        fourthValue = Double(num.number(from: value4)!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
         let outputValue1 = Double((1029.4 * secondValue!)/(firstValue! * firstValue!) * (thirdValue!/fourthValue! - 1))
            
            feetDropLevel.text = String (format: "%.0f ft", outputValue1)
            
            let outputValue2 = Double((outputValue1) / 3.281)
            
            metersDropLevel.text = String (format: "%.1f m", outputValue2)
    }
    }

    @IBAction func gestureTapped(_ sender: Any) {
        view.endEditing(true)
    }
}
