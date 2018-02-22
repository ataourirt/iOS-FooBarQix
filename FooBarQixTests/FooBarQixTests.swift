//
//  FooBarQixTests.swift
//  FooBarQixTests
//
//  Created by Antoine TAOURIRT on 22/02/2018.
//  Copyright © 2018 Antoine TAOURIRT. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import FooBarQix


class FooBarQixSpec: QuickSpec {
  override func spec() {
    
    describe("") {
      context("the numbers are divisible") {
        
        it("the digit is divisible per 3") {
          let number = 3
          let result = HomeViewController.divisibleValue(for: number)
          expect(result).to(match("Foo"))
        }
        
        it("the digit is divisible per 5") {
          let number = 5
          let result = HomeViewController.divisibleValue(for: number)
          expect(result).to(match("Bar"))
        }
        
        it("the digit is divisible per 7") {
          let number = 7
          let result = HomeViewController.divisibleValue(for: number)
          expect(result).to(match("Qix"))
        }
      }
      
      context("the numbers contain special digits") {
        
        it("the number contains the digit 3 in first position") {
          let number = 3
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Foo"))
        }
        
        it("the number contains the digit 3 in second position") {
          let number = 13
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Foo"))
        }
        
        it("the number contains two digits 3") {
          let number = 33
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("FooFoo"))
        }
        
        it("the number contains the digit 5 in first position") {
          let number = 5
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Bar"))
        }
        
        it("the number contains the digit 5 in second position") {
          let number = 15
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Bar"))
        }
        
        it("the number contains two digits 5") {
          let number = 55
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("BarBar"))
        }
        
        it("the number contains the digit 7 in first position") {
          let number = 7
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Qix"))
        }
        
        it("the number contains the digit 7 in second position") {
          let number = 17
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("Qix"))
        }
        
        it("the number contains two digits 7") {
          let number = 77
          let result = HomeViewController.containingValue(for: number)
          expect(result).to(match("QixQix"))
        }
      }
      
      context("the numbers are divisible and contain special digits") {
        it("the number is divisible per 3 and contain the digit 3") {
          let number = 3
          let result = HomeViewController.finalFormat(for: number)
          expect(result).to(match("FooFoo"))
        }
        
        it("the number is divisible per 5 and contain the digit 5") {
          let number = 5
          let result = HomeViewController.finalFormat(for: number)
          expect(result).to(match("BarBar"))
        }
        
        it("the number is divisible per 7 and contain the digit 7") {
          let number = 7
          let result = HomeViewController.finalFormat(for: number)
          expect(result).to(match("QixQix"))
        }

        it("the number is divisible per many special digits and contain the digit 3") {
          let number = 33
          let result = HomeViewController.finalFormat(for: number)
          expect(result).to(match("FooFooFoo"))
        }
        
        it("the number is divisible per many special digits and contain the digit 5") {
          let number = 15
          let result = HomeViewController.finalFormat(for: number)
          expect(result).to(match("FooBarBar"))
        }
      }
    }
  }
}


