//
//  ViewController.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 22/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import UIKit

struct Constants {
  static let foo = "Foo"
  static let bar = "Bar"
  static let qix = "Qix"
}

class HomeViewController: UIViewController {
  
  static func divisibleValue(for value: Int) -> String {
    var result = ""
    
    if value % 3 == 0 { result += Constants.foo }
    if value % 5 == 0 { result += Constants.bar }
    if value % 7 == 0 { result += Constants.qix }
    
    return result
  }
  
  static func containingValue(for value: Int) -> String {
    var result = ""
    
    let myArray = Array("\(value)")
    
    for value in myArray {
      if value == "3" { result += Constants.foo }
      if value == "5" { result += Constants.bar }
      if value == "7" { result += Constants.qix }
    }
    
    return result
  }


  static func finalFormat(for value: Int) -> String {
    let result = divisibleValue(for: value) + containingValue(for: value)
    return result
  }
}

