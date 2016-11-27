//
//  ViewController.swift
//  [15042570]-Preschool-Education-App
//
//  Created by Kenneth F. Camilleri on 28/10/2016.
//  Copyright © 2016 Kenneth Forseth Camilleri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ScreenWidth = UIScreen.main.bounds.width
    let ScreenHeight = UIScreen.main.bounds.height
    
    var FirstNumber = 0
    var SecondNumber = 0
    var Result = 0
    
    // Blink the question mark label on wrong answer
    func blinkLabel(label : UILabel) {

        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            label.alpha = 0
            label.alpha = 1 })
        
    }
    
    @IBOutlet weak var apple1: UIImageView!
    @IBOutlet weak var apple2: UIImageView!
    @IBOutlet weak var apple3: UIImageView!
    @IBOutlet weak var apple4: UIImageView!
    @IBOutlet weak var apple5: UIImageView!
    @IBOutlet weak var apple6: UIImageView!
    @IBOutlet weak var apple7: UIImageView!
    @IBOutlet weak var apple8: UIImageView!
    @IBOutlet weak var apple9: UIImageView!
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    
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
    
    @IBOutlet weak var lblPlus: UILabel!
    @IBOutlet weak var lblEquals: UILabel!
    @IBOutlet weak var lblQuestionMark: UILabel!
    @IBOutlet weak var lblFirstNumber: UILabel!
    @IBOutlet weak var lblSecondNumber: UILabel!
    
    func iPhone6PlusLayout() {
        
        var rect = CGRect()
        
        // Align Buttons
        for case let button as UIButton in self.topView.subviews {
            rect = button.frame
            rect.origin.x = rect.origin.x + 20
            rect.origin.y = rect.origin.y + 20
            button.frame = rect
        }
        
        // Align Labels
        for case let label as UILabel in self.topView.subviews {
            rect = label.frame
            rect.origin.x = rect.origin.x + 20
            rect.origin.y = rect.origin.y + 20
            label.frame = rect
        }
        
        // Align Apples
        for case let apple as UIImageView in self.bottomView.subviews {
            rect = apple.frame
            if (rect.width == 65) {
                rect.origin.x = rect.origin.x + 8
                rect.origin.y = rect.origin.y + 35
                apple.frame = rect
            }
        }
    }
    
    
    func iPhoneSELayout() {
        
        var rect = CGRect()
        
        // Align Buttons
        for case let button as UIButton in self.topView.subviews {
            rect = button.frame
            
            if (rect.origin.x == 8) {
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
            }
            else if (rect.origin.x == 81)  {
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
                rect.origin.x = rect.origin.x - 12
            }
            else if (rect.origin.x == 154)  {
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
                rect.origin.x = rect.origin.x - 20
            }
            else if (rect.origin.x == 227)  {
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
                rect.origin.x = rect.origin.x - 28
            }
            else if (rect.origin.x == 300)  {
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
                rect.origin.x = rect.origin.x - 38
            }

            button.frame = rect
        }
        
        // Align Labels
        rect = lblFirstNumber.frame
        rect.size.width = rect.size.width - 5
        rect.size.height = rect.size.height - 5
        rect.origin.y = rect.origin.y - 20
        lblFirstNumber.frame = rect
        lblFirstNumber.font = UIFont.boldSystemFont(ofSize: 60)
        
        rect = lblPlus.frame
        rect.size.width = rect.size.width - 5
        rect.size.height = rect.size.height - 5
        rect.origin.y = rect.origin.y - 20
        rect.origin.x = rect.origin.x - 12
        lblPlus.frame = rect
        lblPlus.font = UIFont.boldSystemFont(ofSize: 60)
        
        rect = lblSecondNumber.frame
        rect.size.width = rect.size.width - 5
        rect.size.height = rect.size.height - 5
        rect.origin.y = rect.origin.y - 20
        rect.origin.x = rect.origin.x - 20
        lblSecondNumber.frame = rect
        lblSecondNumber.font = UIFont.boldSystemFont(ofSize: 60)
        
        rect = lblEquals.frame
        rect.size.width = rect.size.width - 5
        rect.size.height = rect.size.height - 5
        rect.origin.y = rect.origin.y - 20
        rect.origin.x = rect.origin.x - 28
        lblEquals.frame = rect
        lblEquals.font = UIFont.boldSystemFont(ofSize: 60)
        
        
        rect = lblQuestionMark.frame
        rect.size.width = rect.size.width - 5
        rect.size.height = rect.size.height - 5
        rect.origin.y = rect.origin.y - 20
        rect.origin.x = rect.origin.x - 38
        lblQuestionMark.frame = rect
        lblQuestionMark.font = UIFont.boldSystemFont(ofSize: 60)
        
        // Align Apples
        for case let apple as UIImageView in self.bottomView.subviews {
            rect = apple.frame
            if (rect.width == 65) {
                rect.size.width = rect.size.width - 8
                rect.size.height = rect.size.height - 8
                rect.origin.x = rect.origin.x - 25
                rect.origin.y = rect.origin.y - 42
                apple.frame = rect
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (ScreenHeight == 736) {
            iPhone6PlusLayout()
        }
        else if (ScreenHeight == 568) {
            iPhoneSELayout()
        }
        
        FirstNumber = Int(arc4random_uniform(4)) // generates a number from 0 - 4
        SecondNumber = Int(arc4random_uniform(4)) // generates a number from 0 - 4
        
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

