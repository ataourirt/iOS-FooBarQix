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
      
      context("should be return the initial values when the numbers are not divisible and do not contains 3, 5 or 7") {
        
        it("should be return initial value when the number isn't divisible by 3, 5 or 7") {
          let numbers = [1, 8]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("1"))
          expect(secondResult).to(match("8"))
        }
      }
      
      context("should be return specials values when the numbers are divisible per 3, 5 or 7") {

        it("should be return 'Foo' when the number is divisible per 3") {
          let numbers = [3, 6]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Foo"))
          expect(secondResult).to(match("Foo"))
        }

        it("should be return 'Bar' when the number is divisible per 5") {
          let numbers = [5, 10]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Bar"))
          expect(secondResult).to(match("Bar"))
        }

        it("should be return 'Qix' when the number is divisible per 7") {
          let numbers = [7, 14]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Qix"))
          expect(secondResult).to(match("Qix"))
        }
      }
    
      context("should be return specials values when the numbers contain 3, 5 or 7") {
        
        it("should be return 'Foo' when the number contains 3") {
          let numbers = [3, 13]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Foo"))
          expect(secondResult).to(match("Foo"))
        }
        
        it("should be return 'Bar' when the number contains 5") {
          let numbers = [5, 15]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Bar"))
          expect(secondResult).to(match("Bar"))
        }
        
        it("should be return 'Qix' when the number contains 7") {
          let numbers = [7, 17]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("Qix"))
          expect(secondResult).to(match("Qix"))
        }
        
        it("should be return n*'Foo' when the numbers contains n*3") {
          let numbers = [33, 333]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("FooFoo"))
          expect(secondResult).to(match("FooFooFoo"))
        }
        
        it("should be return n*'Bar' when the numbers contains n*5") {
          let numbers = [55, 555]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("BarBar"))
          expect(secondResult).to(match("BarBarBar"))
        }
        
        it("should be return n*'Qix' when the numbers contains n*7") {
          let numbers = [77, 777]
          let firstResult = FooBarQix.printValue(for: numbers[0])
          let secondResult = FooBarQix.printValue(for: numbers[1])
          expect(firstResult).to(match("QixQix"))
          expect(secondResult).to(match("QixQixQix"))
        }
      }
      
      context("should be return specials values when the numbers contain and are divisible per 3, 5 or 7") {
        
        it("should be return 'FooFoo' when the number contains and is divisible per 3") {
          let number = 3
          let result = FooBarQix.printValue(for: number)
          expect(result).to(match("FooFoo"))
        }
        
        it("should be return 'BarBar' when the number contains and is divisible per 5") {
          let number = 5
          let result = FooBarQix.printValue(for: number)
          expect(result).to(match("BarBar"))
        }
        
        it("should be return 'QixQix' when the number contains and is divisible per 7") {
          let number = 7
          let result = FooBarQix.printValue(for: number)
          expect(result).to(match("QixQix"))
        }
        
        it("should be return 'FooFooFoo' when the number is 33 because it contains 3 two times and is divisible by 3") {
          let number = 33
          let result = FooBarQix.printValue(for: number)
          expect(result).to(match("FooFooFoo"))
        }
        
        it("should be return 'FooBarBar' when the number is 15 because it contains 5 and is divisible by 3 and 5") {
          let number = 15
          let result = FooBarQix.printValue(for: number)
          expect(result).to(match("FooBarBar"))
        }
      }
  }
}


