//
//  ViewController.swift
//  Click Counter
//
//  Created by Márcio Oliveira on 8/2/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
}
