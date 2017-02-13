//
//  ViewController.swift
//  CalculateTip
//
//  Created by Amanda Ortiz on 1/30/17.
//  Copyright © 2017 aortiz6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var enterBillAmnt: UITextField!

    @IBOutlet weak var percentSelect: UISegmentedControl!


    @IBOutlet weak var tipAmntLbl: UILabel!

    @IBAction func calcButton(_ sender: Any) {
        
        let userInput = Float(enterBillAmnt.text!)
        
        let index : Int = percentSelect.selectedSegmentIndex
        
        var tipRate: Float = 0.15
        
        if index == 0 {
            tipRate = 0.15
        }else if index == 1{
            tipRate = 0.18
        }else {
            tipRate = 0.20
        }
        
        let tip = userInput! * tipRate
        let display = String(format: "$%.2f", tip)
        let finalAmnt = String(format: "$%.2f", tip+userInput!)
        tipAmntLbl.text = display
        
        
        //Creating Alert
        let alertController = UIAlertController(title: "Total, Including Tip:", message: finalAmnt, preferredStyle: UIAlertControllerStyle.alert)
        
        //give Alert attributes, and 'exit' title
        alertController.addAction(UIAlertAction(title: "thanks.", style: UIAlertActionStyle.default,handler: nil))
        
        // actually show alertController when alert btn is clicked
        present(alertController, animated: true, completion:nil)
   
        
    }// end function


}

