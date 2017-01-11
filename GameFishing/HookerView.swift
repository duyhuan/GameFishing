//
//  HookerView.swift
//  GameFishing
//
//  Created by techmaster on 1/11/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class HookerView: UIImageView {

    let prepare = 0
    let dropping = 1
    let drawingup = 2
    let caughtFish = 3
    var status: Int?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.image = UIImage(named: "hook")
        self.status = prepare
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func updateMove() {
        if self.status == dropping {
            self.center = CGPoint(x: self.center.x, y: self.center.y + 10)
            if self.frame.origin.y + self.frame.height > 400 {
                self.status = drawingup
            }
        } else if self.status == drawingup {
            self.center = CGPoint(x: self.center.x, y: self.center.y - 20)
            if self.frame.origin.y + self.frame.size.height < 0 {
                self.status = prepare
            }
        } else if self.status == caughtFish {
            self.center = CGPoint(x: self.center.x, y: self.center.y - 5)
            if self.frame.origin.y + self.frame.size.height < 0 {
                self.status = prepare
            }
        }
    }
    
    func dropDownAtX(x: Int) {
        if self.status == prepare {
            self.center = CGPoint(x: CGFloat(x), y: self.center.y)
            self.status = dropping
        }
    }

}
