//
//  FooBarQix.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 25/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import Foundation

class FooBarQix {
  
  static func printValue(for number: Int) -> String {
    
    let div = printDivisibleValue(for: number)
    let contain = printContainValue(for: number)
    
    if div.isEmpty && contain.isEmpty {
      return "\(number)"
    }
    return div + contain
  }
  
  static func printDivisibleValue(for value: Int) -> String {
    var result = ""
    
    if value % 3 == 0 { result += Constants.foo }
    if value % 5 == 0 { result += Constants.bar }
    if value % 7 == 0 { result += Constants.qix }
    
    return result
  }
  
  static func printContainValue(for value: Int) -> String {
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
