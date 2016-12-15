//
//  ViewController.swift
//  Tipster
//
//  Created by David Hill on 12/14/16.
//  Copyright © 2016 David Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var TipCtrl: UISegmentedControl!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CalculateTip(_ sender: AnyObject)
    {
        let tipPercentages = [0.05, 0.10, 0.15, 0.20]
        let bill = Double(BillField.text!) ?? 0
        
        let Tip = bill * tipPercentages[TipCtrl .selectedSegmentIndex]
        
        let Total = bill + Tip
        
        TipLabel.text = String(format: "$%.2f", Tip)
        TotalLabel.text = String(format: "$%.2f", Total)
    }
        
    @IBAction func OnTap(_ sender: AnyObject)
    {
        view.endEditing(true)
    }
   

}

