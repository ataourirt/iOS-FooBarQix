//
//  FooBarQix.swift
//  FooBarQix
//
//  Created by Antoine TAOURIRT on 25/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import Foundation

class FooBarQix {
  
  static let keywords : [Int:String] = [3 : "Foo", 5: "Bar", 7: "Qix"]
  
  static func printValue(for number: Int) -> String {
    let divisibleValue = printDivisibleValue(for: number)
    let containValue   = printContainValue(for: number)
    
    if divisibleValue.isEmpty && containValue.isEmpty {
      return "\(number)"
    }
    return divisibleValue + containValue
  }
}


extension FooBarQix {
  
  private static func printDivisibleValue(for number: Int) -> String {
    var result         = ""
    let sortedKeywords = keywordsSortedByPriority()
    
    for keyword in sortedKeywords {
      if number % keyword.key == 0 { result += keyword.value }
    }
    return result
  }
  
  private static func printContainValue(for number: Int) -> String {
    var result         = ""
    let digits         = Array("\(number)")
    let sortedKeywords = keywordsSortedByPriority()
    
    for digit in digits {
      for keyword in sortedKeywords {
        let keywordDigit: Character = "\(keyword.key)".first!
        if digit == keywordDigit { result += keyword.value }
      }
    }
    return result
  }
  
  private static func keywordsSortedByPriority() -> [(key: Int, value: String)]  {
    return keywords.sorted(by: { $0.key < $1.key} )
  }
}
