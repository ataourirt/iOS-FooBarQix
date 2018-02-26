//
//  ViewController.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 22/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  @IBOutlet weak var startButton: UIButton!
  @IBOutlet weak var resultLabel: UILabel!
  
  @IBAction func launchValueDisplay(_ sender: Any) {
    
    resultLabel.text = ""
    for i in 1...100 {
      print("\(i) = > " + FooBarQix.printValue(for: i))
        resultLabel.text? += "\(i) = > " + FooBarQix.printValue(for: i) + "\n"
    }
  }
  
}

