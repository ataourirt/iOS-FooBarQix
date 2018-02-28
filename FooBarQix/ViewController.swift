//
//  ViewController.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 22/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
  @IBOutlet weak var termView: UIView!
  @IBOutlet weak var startButton: UIButton!
  @IBOutlet weak var promptLabel: UILabel!
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var closeRulesButton: UIButton!
  @IBOutlet weak var rulesVisualEffectView: UIVisualEffectView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
  }
  
  @IBAction func closeRules(_ sender: Any) {
    self.rulesVisualEffectView.removeFromSuperview()
  }
  
  @IBAction func launchValueDisplay(_ sender: Any) {
    promptLabel.text = ""
    resultLabel.text = ""
    
    for i in 1...100 {
      promptLabel.text? += "$> \n"
      resultLabel.text? += "\(i) => " + FooBarQix.printValue(for: i) + "\n"
    }
  }
}

extension HomeViewController {
  
  override var prefersStatusBarHidden: Bool {
    return true
  }
  
  func configureUI() {
    self.termView.layer.masksToBounds = true
    
    addRoundedBorders(to: self.termView.layer, radius: 5.0, width: 0.2, color: UIColor.init(red: 225, green: 225, blue: 255, alpha: 1))
    addRoundedBorders(to: startButton.layer, radius: 7.5, width: 0, color: .gray)
    addRoundedBorders(to: closeRulesButton.layer, radius: 7.5, width: 0, color: .blue)
    
    let redColor    = UIColor.init(red: 255.0/255.0, green: 96.0/255.0, blue: 88.0/255.0, alpha: 1).cgColor
    let orangeColor = UIColor.init(red: 255.0/255.0, green: 189.0/255.0, blue: 46.0/255.0, alpha: 1).cgColor
    let greenColor  = UIColor.init(red: 40.0/255.0, green: 202.0/255.0, blue: 65.0/255.0, alpha: 1).cgColor
    
    let redLayer    = circleLayer(for: CGPoint(x: 10,y: 10), radius: CGFloat(5), color: redColor)
    let orangeLayer = circleLayer(for: CGPoint(x: 25,y: 10), radius: CGFloat(5), color: orangeColor)
    let greenLayer  = circleLayer(for: CGPoint(x: 40,y: 10), radius: CGFloat(5), color: greenColor)
    
    termView.layer.addSublayer(redLayer)
    termView.layer.addSublayer(orangeLayer)
    termView.layer.addSublayer(greenLayer)
  }
}

extension HomeViewController {
  func circleLayer(for arcCenter: CGPoint, radius: CGFloat, color: CGColor) -> CALayer {
    let circlePath = UIBezierPath(arcCenter: arcCenter, radius: radius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
    let layer      = CAShapeLayer()
    layer.path        = circlePath.cgPath
    layer.fillColor   = color
    layer.strokeColor = color
    return layer
  }
  
  func addRoundedBorders(to layer: CALayer, radius: CGFloat, width: CGFloat, color: UIColor) {
    layer.cornerRadius = radius
    layer.borderColor  = color.cgColor
    layer.borderWidth  = width
  }
}


