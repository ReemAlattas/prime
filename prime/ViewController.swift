//
//  ViewController.swift
//  prime
//
//  Created by Reem Alattas on 1/31/16.
//  Copyright © 2016 ReemAlattas. All rights reserved.
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
    
    @IBOutlet weak var num: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func primeButton(sender: AnyObject) {
        
        var numInt = Int(num.text!)
        //print(numInt)
        
        if numInt != nil {
            
            var isPrime = true
            
            if numInt == 1 {
                
                isPrime = false
                
            }
            
            if numInt != 1 && numInt != 2 {
                
                for var i = 2; i < numInt; i++ {
                    
                    if numInt! % i == 0 {
                        
                        isPrime = false
                        
                    }
                }
            }
            
            if isPrime {
            
                result.text = "Prime!"
                
            } else {
                
                result.text = "Not Prime!"
                
            }
            
        }
            
        else {
            result.text = "Please enter a number in the box"
        }
        
    }


}

