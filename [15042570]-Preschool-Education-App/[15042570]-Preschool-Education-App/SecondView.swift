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

    
    @IBOutlet var SecondView: UIView!
    @IBOutlet weak var btnRestart: UIButton!
    
    @IBOutlet weak var imgStarOne: UIImageView!
    @IBOutlet weak var imgStarTwo: UIImageView!
    @IBOutlet weak var imgStarThree: UIImageView!
    @IBOutlet weak var imgStarFour: UIImageView!
    @IBOutlet weak var imgStarFive: UIImageView!
    @IBOutlet weak var imgThumbsUp: UIImageView!
    
    @IBOutlet weak var lblFirstNumber: UILabel!
    @IBOutlet weak var lblSecondNumber: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    let ScreenWidth = UIScreen.main.bounds.width
    let ScreenHeight = UIScreen.main.bounds.height
    
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
    
    func iPhone6PlusLayout() {
        
        var rect = CGRect()
        
        // Align Button
        rect = btnRestart.frame
        rect.origin.x = rect.origin.x + 20
        btnRestart.frame = rect
        
        // Align Labels
        for case let label as UILabel in self.SecondView.subviews {
            rect = label.frame
            rect.origin.x = rect.origin.x + 20
            label.frame = rect
        }
        
        // Align Stars
        for case let star as UIImageView in self.SecondView.subviews {
            rect = star.frame
            if (rect.width != 103) {
                rect.origin.x = rect.origin.x + 15
                star.frame = rect
            }
        }
    }

    func iPhoneSELayout() {
        
        var rect = CGRect()
        
        // Align Stars
        for case let star as UIImageView in self.SecondView.subviews {
            rect = star.frame
            if (rect.width != 103) {
                rect.origin.x = rect.origin.x - 20
                rect.size.width = rect.size.width - 15
                rect.size.height = rect.size.height - 15
                star.frame = rect
            }
        }
        
        // Align Labels
        for case let label as UILabel in self.SecondView.subviews {
            rect = label.frame
            if (rect.origin.x != 17) {
                if (rect.origin.x == 90) {
                    rect.origin.x = rect.origin.x - 20
                }
                else {
                    rect.origin.x = rect.origin.x - 45
                }
                
            }
            rect.origin.y = rect.origin.y - 15
            label.frame = rect
            label.font = UIFont.boldSystemFont(ofSize: 40)
        }
        
        // Resize restart button
        rect = btnRestart.frame
        rect.size.width = rect.size.width - 30
        rect.size.height = rect.size.height - 30
        rect.origin.x = rect.origin.x - 10
        rect.origin.y = rect.origin.y - 15
        btnRestart.frame = rect
        
        // Resize thumb up image
        rect = imgThumbsUp.frame
        rect.size.width = rect.size.width - 20
        rect.size.height = rect.size.height - 20
        rect.origin.y = rect.origin.y - 15
        imgThumbsUp.frame = rect
        
        // Resize image star four
        rect = imgStarFour.frame
        rect.size.width = rect.size.width - 10
        rect.size.height = rect.size.height - 10
        rect.origin.y = rect.origin.y - 50
        imgStarFour.frame = rect
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (ScreenHeight == 736) {
            iPhone6PlusLayout()
        }
        else if (ScreenHeight == 568) {
            iPhoneSELayout()
        }
        
        lblFirstNumber.text = FirstNumber
        lblSecondNumber.text = SecondNumber
        lblResult.text = Result
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
