//
//  E_ViewController.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 06/03/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import UIKit

class E_ViewController: UIViewController {

    @IBOutlet weak var duplexLinerID: UITextField!
    @IBOutlet weak var duplexStrokeLength: UITextField!
    @IBOutlet weak var duplexEff: UITextField!
    @IBOutlet weak var duplexRodOD: UITextField!
    @IBOutlet weak var triplexLinerID: UITextField!
    @IBOutlet weak var triplexStrokeLength: UITextField!
    @IBOutlet weak var triplexEff: UITextField!
    @IBOutlet weak var strokesPerMin: UITextField!
    
    @IBOutlet weak var outputDuplex: UITextField!
    @IBOutlet weak var OutputTriplex: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTappedButton(_ sender: Any) {
        
        let firstValue = Double (duplexLinerID.text!)
        let secondValue = Double (duplexStrokeLength.text!)
        let thirdValue = Double (duplexEff.text!)
        let fourthValue = Double (triplexLinerID.text!)
        let fifthValue = Double (triplexStrokeLength.text!)
        let sixValue = Double (triplexEff.text!)
        let eightValue = Double (duplexRodOD.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil &&  eightValue != nil {
        
        let outputValue1 = Double (0.0001619 * (2 * (firstValue! * firstValue! - eightValue! * eightValue!)) * secondValue! * thirdValue! / 100)
            
                 outputDuplex.text = String (format: "%.5f", outputValue1)
            
        } else if fourthValue != nil && fifthValue != nil && sixValue != nil {
            
            
            let outputValue2 = Double (0.0002428 * fourthValue! * fourthValue! * fifthValue! * sixValue! / 100)
        
       
            OutputTriplex.text = String (format: "%.5f", outputValue2)
            
        
    }

}
}
