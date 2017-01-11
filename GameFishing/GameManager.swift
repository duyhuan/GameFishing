//
//  GameManager.swift
//  GameFishing
//
//  Created by techmaster on 1/11/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class GameManager: NSObject {
    var fishViews: NSMutableArray?
    var hookView: HookerView?
    
    override init() {
        self.fishViews = NSMutableArray()
        self.hookView = HookerView(frame: CGRect(x: 0, y: -490, width: 20, height: 490))
    }
    
    func addFishToViewController(viewController: UIViewController, width: Int) {
        let fishView = FishView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        fishView.generateFish(width: width)
        viewController.view.addSubview(fishView)
    }
}
