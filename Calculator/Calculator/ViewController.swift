//
//  ViewController.swift
//  Calculator
//
//  Created by Manggala Tanri on 14/09/21.
//  Copyright © 2021 Manggala Tanri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Int = 0;
    var previousNumber:Int = 0;
    var performingMath = false
    var operation = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Int(label.text!)!
            performingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Int(label.text!)!
        }
        
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Int(label.text!)!

    }
    
   @IBAction func formula(_ sender: UIButton)
    {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 15
        {
            
            previousNumber = Int(label.text!)!
            
            
            
            if sender.tag == 11
            {//tambah
                label.text = "+";
            }
            
            else if sender.tag == 12
            {//kurang
                label.text = "-";
            }
            
            else if sender.tag == 13
            {//kali
                label.text = "x";
            }
            
            else if sender.tag == 14
            {//bagi
                label.text = "/";
            }
            operation = sender.tag;
            performingMath = true;
        }
            
        else if sender.tag == 15
        {
            if operation == 11
            {
                label.text = String(previousNumber+numberOnScreen )
            }
            else if operation == 12{
                label.text = String(previousNumber-numberOnScreen)
            }
            else if operation == 13{
                label.text = String(previousNumber*numberOnScreen)
            }
            else if operation == 14{
                label.text = String(previousNumber/numberOnScreen)
            }
            else if sender.tag == 10{
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    

        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    



    }
}
