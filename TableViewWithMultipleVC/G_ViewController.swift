//
//  G_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 13/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class G_ViewController: UIViewController {

    @IBOutlet weak var casingID: UITextField!
    @IBOutlet weak var casingMD: UITextField!
    @IBOutlet weak var bitOD: UITextField!
    @IBOutlet weak var bitMD: UITextField!
    
    @IBOutlet weak var drillC1: UITextField!    
    @IBOutlet weak var heavyWdP: UITextField!
    @IBOutlet weak var drillPipe: UITextField!
    @IBOutlet weak var drillC1Length: UITextField!
    @IBOutlet weak var heavyWdPLength: UITextField!
    @IBOutlet weak var dpLength: UILabel!
    @IBOutlet weak var pumpRate: UITextField!
    @IBOutlet weak var annularVolumeBbl: UITextField!
    @IBOutlet weak var bottomsUpMin: UITextField!
    
    @IBOutlet weak var switchToMeters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {

        let num = NumberFormatter()
    let value1 = Double(truncating: num.number(from:casingID.text!)!)
    let value2 = Double(truncating: num.number(from: casingMD.text!)!)
    let value3 = Double(truncating: num.number(from: bitOD.text!)!)
    let value4 = Double(truncating: num.number(from: bitMD.text!)!)
    let value5 = Double(truncating: num.number(from: drillC1.text!)!)
    let value7 = Double(truncating: num.number(from: heavyWdP.text!)!)
    let value8 = Double(truncating: num.number(from: drillPipe.text!)!)
    let value9 = Double(truncating: num.number(from: drillC1Length.text!)!)
    let value11 = Double(truncating:num.number(from:heavyWdPLength.text!)!)
    let value13 = Double(truncating: num.number(from: pumpRate.text!)!)
        
        if switchToMeters.isOn {
            let dpLength = Double (value4 - (value9 + value11))
            
            let dpVolume = (value5 * value5 * value9 + value7 * value7 * value11 + value8 * value8 * dpLength)/1029.4
        
            let annVolume = (value1 * value1 * value2 + value3 * value3 * (value4 - value2)) / 1029.4 - dpVolume
                
                annularVolumeBbl.text = String (format: "%.0f bbl", annVolume)
              
        let timeToBU = Double (annVolume) / value13
                
                bottomsUpMin.text = String (format: "%.0f min", timeToBU)
        
        } else {
            let dpLength = Double (value4 - (value9 + value11))
            
            let dpVolume = (value5 * value5 * value9 + value7 * value7 * value11 + value8 * value8 * dpLength) * 3.281 / 1029.4
            
            let annVolume = ((value1 * value1 * value2 + value3 * value3 * (value4 - value2))) * 3.281 / 1029.4 - dpVolume
            
            annularVolumeBbl.text = String (format: "%.0f bbl", annVolume)
            
            let timeToBU = Double (annVolume) / value13
            
            bottomsUpMin.text = String (format: "%.0f min", timeToBU)
            
    }
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

}
