//
//  SecondView.swift
//  [15042570]-Preschool-Education-App
//
//  Created by Kenneth F. Camilleri on 30/10/2016.
//  Copyright © 2016 Kenneth Forseth Camilleri. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var imgStarOne: UIImageView!
    @IBOutlet weak var imgStarTwo: UIImageView!
    @IBOutlet weak var imgStarThree: UIImageView!
    @IBOutlet weak var imgStarFour: UIImageView!
    @IBOutlet weak var imgStarFive: UIImageView!
    
    @IBOutlet weak var lblFirstNumber: UILabel!
    @IBOutlet weak var lblSecondNumber: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    var FirstNumber = String()
    var SecondNumber = String()
    var Result = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Call animation method with different delay time on each image
        fadeAnimation(image: imgStarOne, delay: 0.3)
        fadeAnimation(image: imgStarTwo, delay: 0.2)
        fadeAnimation(image: imgStarThree, delay: 0.1)
        fadeAnimation(image: imgStarFour, delay: 0.4)
        fadeAnimation(image: imgStarFive, delay: 0.0)
    }
    
    func fadeAnimation(image : UIView, delay : TimeInterval) {
        
        UIView.animate(withDuration: 1.0, delay: delay, options: .curveEaseInOut, animations: {
            UIView.setAnimationRepeatCount(6) // Fade Out & In x 6 times
            image.alpha = 0
            image.alpha = 1 })
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblFirstNumber.text = FirstNumber
        lblSecondNumber.text = SecondNumber
        lblResult.text = Result
        
        imgStarOne.alpha = 1
        imgStarTwo.alpha = 1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
