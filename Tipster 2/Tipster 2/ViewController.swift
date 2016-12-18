
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
    let defaults = UserDefaults.standard
    
    var CustomTipVal = 0.00
    
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
        var tipPercentages = [0.05, 0.10, 0.15, 0.20, 0.00]
        
        tipPercentages[4] = CustomTipVal
        
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        defaults.synchronize()
        
        CustomTipVal = defaults.double(forKey: "nTipVal")
        
        
        print(CustomTipVal)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
      
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    
    
    
    
    
}

