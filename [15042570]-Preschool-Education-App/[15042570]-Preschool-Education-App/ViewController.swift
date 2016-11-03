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
    
    // Blink the question mark label on wrong answer
    func blinkLabel(label : UILabel) {

        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            label.alpha = 0
            label.alpha = 1 })
        
    }
    
    @IBAction func btnZero(_ sender: UIButton) {
        if (Result == 0) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
        
    }
    
    @IBAction func btnOne(_ sender: UIButton) {
        if (Result == 1) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        if (Result == 2) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        if (Result == 3) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        if (Result == 4) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnFive(_ sender: UIButton) {
        if (Result == 5) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnSix(_ sender: UIButton) {
        if (Result == 6) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnSeven(_ sender: UIButton) {
        if (Result == 7) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnEight(_ sender: UIButton) {
        if (Result == 8) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
        }
    }
    
    @IBAction func btnNine(_ sender: UIButton) {
        if (Result == 9) {
            performSegue(withIdentifier: "resultSegue", sender: self)
        }
        else {
            lblQuestionMark.textColor = UIColor.red
            blinkLabel(label: lblQuestionMark)
            
        }
    }
    
    @IBOutlet weak var lblQuestionMark: UILabel!
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! SecondView
        
        resultViewController.FirstNumber = String(FirstNumber)
        resultViewController.SecondNumber = String(SecondNumber)
        resultViewController.Result = String(Result)
    }


}

