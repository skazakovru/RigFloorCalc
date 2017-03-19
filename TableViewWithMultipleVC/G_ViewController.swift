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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
        let value1 = Double (casingID.text!)
        let value2 = Double (casingMD.text!)
        let value3 = Double (bitOD.text!)
        let value4 = Double (bitMD.text!)
        let value5 = Double (drillC1.text!)
    
        let value7 = Double (heavyWdP.text!)
        let value8 = Double (drillPipe.text!)
        let value9 = Double (drillC1Length.text!)
        let value11 = Double (heavyWdPLength.text!)
        let value13 = Double (pumpRate.text!)
        
        if value4 != nil && value9 != nil && value11 != nil && value13 != nil {
            let dpLength = Double (value4! - (value9! + value11!))
            
            let dpVolume = (value5! * value5! * value9! + value7! * value7! * value11! + value8! * value8! * dpLength)/1029.4
            
            if value1 != nil && value2 != nil && value3 != nil {
                let annVolume = (value1! * value1! * value2! + value3! * value3! * (value4! - value2!)) / 1029.4 - dpVolume
                
                annularVolumeBbl.text = String (format: "%.0f", annVolume)
              
        let timeToBU = Double (annVolume) / value13!
                
                bottomsUpMin.text = String (format: "%.0f", timeToBU)
        
            }
        }
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

}
