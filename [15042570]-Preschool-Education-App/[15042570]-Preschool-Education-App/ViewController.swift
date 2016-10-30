//
//  ViewController.swift
//  [15042570]-Preschool-Education-App
//
//  Created by Kenneth F. Camilleri on 28/10/2016.
//  Copyright © 2016 Kenneth Forseth Camilleri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var FirstNumber = 0
    var SecondNumber = 0
    var Result = 0
    
    @IBAction func btnZero(_ sender: UIButton) {
        if (Result == 0) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
        
    }
    
    @IBAction func btnOne(_ sender: UIButton) {
        if (Result == 1) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        if (Result == 2) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        if (Result == 3) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        if (Result == 4) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnFive(_ sender: UIButton) {
        if (Result == 5) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnSix(_ sender: UIButton) {
        if (Result == 6) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnSeven(_ sender: UIButton) {
        if (Result == 7) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnEight(_ sender: UIButton) {
        if (Result == 8) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBAction func btnNine(_ sender: UIButton) {
        if (Result == 9) {
            lblResult.text = "Good"
            lblResult.textColor = UIColor.green
        }
        else {
            lblResult.text = "Wrong"
            lblResult.textColor = UIColor.red
        }
    }
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBOutlet weak var lblFirstNumber: UILabel!
    @IBOutlet weak var lblSecondNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstNumber = Int(arc4random_uniform(4))
        SecondNumber = Int(arc4random_uniform(4))
        
        Result = FirstNumber + SecondNumber
    
        lblFirstNumber.text = String(FirstNumber)
        lblSecondNumber.text = String(SecondNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

