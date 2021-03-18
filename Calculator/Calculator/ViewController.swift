//
//  ViewController.swift
//  Calculator
//
//  Created by Arun Muthukumar on 02/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var presentNumber : Int = 0
    var previousNumber : Int = 0
    var operation = 0
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func numberCharacterEntered(_ sender: UIButton)
    {
            displayLabel.text = displayLabel.text!  + sender.title(for: .normal)!
            presentNumber = Int(displayLabel.text!)!
    }
    
    @IBAction func characterEntered(_ sender: UIButton) {
        
    if displayLabel.text != "" && sender.tag != 16 && sender.tag != 15
    {
        previousNumber = Int(displayLabel.text!)!

        if sender.tag == 14 {
            displayLabel.text = "+"
        }
        else if sender.tag == 13{
             displayLabel.text = "-"
        }
        else if sender.tag == 12{
            displayLabel.text = "*"
        }
        else if sender.tag == 11{
            displayLabel.text = "/"
        }
        operation = sender.tag
    }
        else if sender.tag == 15
            {
        if operation == 14
        {
            displayLabel.text = String(previousNumber + presentNumber)
        }
        else if operation == 13
        {
            displayLabel.text = String(previousNumber - presentNumber)
        }
        else if operation == 12
        {
            displayLabel.text = String(previousNumber * presentNumber)
        }
        else if operation == 11
        {
            displayLabel.text = String(previousNumber / presentNumber)
        }
    }
    else if sender.tag == 16
    {
        displayLabel.text = ""
        previousNumber = 0
        presentNumber = 0
        operation = 0
    }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
