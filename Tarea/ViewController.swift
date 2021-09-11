//
//  ViewController.swift
//  Tarea
//
//  Created by user203110 on 9/3/21.
//

import UIKit

class ViewController: UIViewController {
    var numberOnLabel:Double = 0;
    var firstNumber:Double = 0;
    var calculating = false;
    var mathoperation=0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if calculating == true{
            label.text = String(sender.tag-1)
            numberOnLabel = Double(label.text!)!
            calculating = false
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            numberOnLabel = Double(label.text!)!
        }

    }
    
    @IBAction func functions(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            firstNumber = Double(label.text!)!
            if sender.tag == 12{
                label.text = "/";
            }
            else if sender.tag == 13{
                label.text = "x";
            }
            else if sender.tag == 14{
                label.text = "-";
            }
            else if sender.tag == 15{
                label.text = "+";
            }
            mathoperation = sender.tag
            calculating = true;
        }
        else if sender.tag == 16{
            if mathoperation == 12 {
                label.text = String(firstNumber / numberOnLabel)

            }
            else if mathoperation == 13 {
                label.text = String(firstNumber * numberOnLabel)

            }
            else if mathoperation == 14 {
                label.text = String(firstNumber - numberOnLabel)

            }
            else if mathoperation == 15 {
                label.text = String(firstNumber + numberOnLabel)
            }
        }
        else if sender.tag == 11{
            label.text = ""
            firstNumber = 0;
            numberOnLabel = 0;
            mathoperation = 0;
             
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
    
    
    
    
    
    
}
