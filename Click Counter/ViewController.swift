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
    var label1: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labels
        let label1 = UILabel()
        label1.frame = CGRect(x: 100, y: 150, width: 60, height: 60)
        label1.text = "0"
        view.addSubview(label1)
        self.label1 = label1
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 300, y: 150, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
 
        // buttons
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 350, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = self.label1.text
        self.view.backgroundColor = .green
        
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label1.text = "\(self.count)"
        self.label2.text = self.label1.text
        self.view.backgroundColor = .red
    }
}

