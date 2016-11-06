//
//  DragView.swift
//  [15042570]-Preschool-Education-App
//
//  Created by Kenneth F. Camilleri on 29/10/2016.
//  Copyright © 2016 Kenneth Forseth Camilleri. All rights reserved.
//

import UIKit

class DragView: UIImageView {
    
    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        var newcenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        let rect = self.bounds
        let halfx = rect.midX
        
        // check if image is far right
        if (newcenter.x > (self.superview?.bounds.size.width)! - halfx) {
            newcenter.x = (self.superview?.bounds.size.width)! - halfx
        }
        else if (newcenter.x < halfx) { // check if image is far left
            newcenter.x = halfx
        }
        
        let halfy = rect.midY
        
        // check if image is far down
        if (newcenter.y > (self.superview?.bounds.size.height)! - halfy) {
            newcenter.y = (self.superview?.bounds.size.height)! - halfy
        }
        else if (newcenter.y < halfy) { // check if image is far up
            newcenter.y = halfy
        }
        
        // set new location
        self.center = newcenter
        
    }

}
