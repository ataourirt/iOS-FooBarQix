//
//  ViewController.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 22/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import UIKit

struct Constants {
  static let foo : String = "Foo"
  static let bar : String = "Bar"
  static let qix : String = "Qix"
}

class FooBarQix {
  
  static func generateResult(for number: Int) -> String {
    
    let div = divisibleKeyword(for: number)
    let contain = containingKeyword(for: number)
    
    if div.isEmpty && contain.isEmpty {
      return "\(number)"
    }
    return div + contain
  }
  

  static func divisibleKeyword(for value: Int) -> String {
    var result = ""

    if value % 3 == 0 { result += Constants.foo }
    if value % 5 == 0 { result += Constants.bar }
    if value % 7 == 0 { result += Constants.qix }

    return result
  }
  
  static func containingKeyword(for value: Int) -> String {
    var result = ""
    
    let myArray = Array("\(value)")
    
    for value in myArray {
      if value == "3" { result += Constants.foo }
      if value == "5" { result += Constants.bar }
      if value == "7" { result += Constants.qix }
    }
    
    return result
  }
  
}
class HomeViewController: UIViewController {


}

