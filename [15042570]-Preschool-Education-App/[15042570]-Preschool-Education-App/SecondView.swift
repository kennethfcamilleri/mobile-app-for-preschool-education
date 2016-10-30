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

    
    @IBOutlet weak var lblFirstNumber: UILabel!
    
    @IBOutlet weak var lblSecondNumber: UILabel!
    
    @IBOutlet weak var lblResult: UILabel!
    
    var FirstNumber = String()
    var SecondNumber = String()
    var Result = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblFirstNumber.text = FirstNumber
        lblSecondNumber.text = SecondNumber
        lblResult.text = Result
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
