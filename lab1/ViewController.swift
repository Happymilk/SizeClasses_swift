//
//  ViewController.swift
//  lab1
//
//  Created by Admin on 09.02.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var metresField: UITextField!
    @IBOutlet weak var milesResult: UILabel!
    @IBOutlet weak var plethrasResult: UILabel!
    @IBOutlet weak var ammasResult: UILabel!
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func convert(sender: UIButton) {
        if let met = stringToDouble(metresField.text!)
        {
            milesResult.text = doubleToString(calculations(Double(met),val : 0.00062))
            plethrasResult.text = doubleToString(calculations(Double(met),val : 0.03225))
            ammasResult.text = doubleToString(calculations(Double(met),val : 0.05401))
        }
    }
    
    /*@IBAction func convert(sender: UIButton) {
        if let met = Double(metresField.text!)
        {
            milesResult.text = String(calculations(Double(met),val :0.00062))
            plethrasResult.text = String(calculations(Double(met),val : 0.03225))
            ammasResult.text = String(calculations(Double(met),val : 0.05401))
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func doubleToString(number:Double) -> String {
        let result:NSNumber = number
        return result.stringValue;
    }
    
    func stringToDouble(str:NSString) -> Double? {
        let result:NSString = str
        return result.doubleValue;
    }
    
    func calculations(number:Double, val:Double) -> Double {
        return number * val
    }

}

