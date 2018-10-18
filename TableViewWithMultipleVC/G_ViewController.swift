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
    @IBOutlet weak var dPLengthLabel: UILabel!
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
        var valueOne = casingID.text!
        var valueTwo = casingMD.text!
        var valueThree = bitOD.text!
        var valueFour = bitMD.text!
        var valueFive = drillC1.text!
        var valueSix = heavyWdP.text!
        var valueSeven = drillPipe.text!
        var valueEight = drillC1Length.text!
        var valueNine = heavyWdPLength.text!
        var valueTen = pumpRate.text!
        
        if num.number(from:valueOne) == nil {valueOne = valueOne.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueTwo) == nil {valueTwo = valueTwo.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueThree) == nil {valueThree = valueThree.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueFour) == nil {valueFour = valueFour.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueFive) == nil {valueFive = valueFive.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueSix) == nil {valueSix = valueSix.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueSeven) == nil {valueSeven = valueSeven.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueEight) == nil {valueEight = valueEight.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueNine) == nil {valueNine = valueNine.replacingOccurrences(of: ".", with: ",")}
        if num.number(from:valueTen) == nil {valueTen = valueTen.replacingOccurrences(of: ".", with: ",")}
        
        
        let value1 = Double(truncating: num.number(from: valueOne)!)
        let value2 = Double(truncating: num.number(from: valueTwo)!)
        let value3 = Double(truncating: num.number(from: valueThree)!)
        let value4 = Double(truncating: num.number(from: valueFour)!)
        let value5 = Double(truncating: num.number(from: valueFive)!)
        let value6 = Double(truncating: num.number(from: valueSix)!)
        let value7 = Double(truncating: num.number(from: valueSeven)!)
        let value8 = Double(truncating: num.number(from: valueEight)!)
        let value9 = Double(truncating: num.number(from: valueNine)!)
        let value10 = Double(truncating: num.number(from: valueTen)!)
        
        if switchToMeters.isOn {
            
            let dpLength = Double (value4 - (value8 + value9))
            
              dPLengthLabel.text = String(format: "%.1f",dpLength)
            
            let dpVolume = (value5 * value5 * value8 + value6 * value6 * value9 + value7 * value7 * dpLength)/1029.4
        
            let annVolume = (value1 * value1 * value2 + value3 * value3 * (value4 - value2)) / 1029.4 - dpVolume
                
                annularVolumeBbl.text = String (format: "%.0f bbl", annVolume)
              
        let timeToBU = Double (annVolume) / value10
                
                bottomsUpMin.text = String (format: "%.0f min", timeToBU)
        
        } else {
            
            let dpLength = Double (value4 - (value8 + value9))
            
            dPLengthLabel.text = String(format: "%.1f",dpLength)
            
            let dpVolume = (value5 * value5 * value8 + value6 * value6 * value9 + value7 * value7 * dpLength) * 3.281 / 1029.4
            
            let annVolume = ((value1 * value1 * value2 + value3 * value3 * (value4 - value2))) * 3.281 / 1029.4 - dpVolume
            
            annularVolumeBbl.text = String (format: "%.0f bbl", annVolume)
            
            let timeToBU = Double (annVolume) / value10
            
            bottomsUpMin.text = String (format: "%.0f min", timeToBU)
            
    }
    }
    @IBAction func screenTapped(_ sender: Any) { view.endEditing(true)
    }

}
