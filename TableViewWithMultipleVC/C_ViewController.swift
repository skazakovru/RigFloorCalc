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
        let firstValue = Double(drillPipeID.text!)
        let secondValue = Double(slugVolume.text!)
        let thirdValue = Double(slugWeight.text!)
        let fourthValue = Double(mudWeight.text!)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
         let outputValue1 = Double((1029.4 * secondValue!)/(firstValue! * firstValue!) * ((thirdValue!/fourthValue!) - 1))
            
            feetDropLevel.text = String (format: "%.0f", outputValue1)
            
            let outputValue2 = Double((outputValue1) / 3.281)
            
            metersDropLevel.text = String (format: "%.1f", outputValue2)
    }
    }

    @IBAction func gestureTapped(_ sender: Any) {
        view.endEditing(true)
    }
}
