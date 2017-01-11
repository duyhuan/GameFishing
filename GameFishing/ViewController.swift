//
//  ViewController.swift
//  GameFishing
//
//  Created by techmaster on 1/11/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fishView = FishView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        fishView.generateFish(width: Int(self.view.bounds.width))
        self.view.addSubview(fishView)
    }

}

