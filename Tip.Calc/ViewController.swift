//
//  ViewController.swift
//  Tip.Calc
//
//  Created by Christina S. on 9/10/18.
//  Copyright © 2018 Christina S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
        
        print("hello")
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
    let tipPercentages = [0.18, 0.2, 0.25]
        
    let bill = Double(billField.text!) ?? 0
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
        
    totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    
}

