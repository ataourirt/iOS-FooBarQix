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
    
    describe("intermediate treatment - divisible numbers") {
      
      it("must not return values when the numbers aren't divisible per 3, 5 or 7") {
        let numbers = [1, 8]
        let firstResult = FooBarQix.divisibleValue(for: numbers[0])
        let secondResult = FooBarQix.divisibleValue(for: numbers[1])
        expect(firstResult).to(beEmpty())
        expect(secondResult).to(beEmpty())
      }
      
      context("must be return specials values when the numbers are divisible per 3, 5 or 7") {
        
        it("must be return 'Foo' when the number is divisible per 3") {
          let numbers = [3, 6]
          let firstResult = FooBarQix.divisibleValue(for: numbers[0])
          let secondResult = FooBarQix.divisibleValue(for: numbers[1])
          expect(firstResult).to(match("Foo"))
          expect(secondResult).to(match("Foo"))
        }
        
        it("must be return 'Bar' when the number is divisible per 5") {
          let numbers = [5, 10]
          let firstResult = FooBarQix.divisibleValue(for: numbers[0])
          let secondResult = FooBarQix.divisibleValue(for: numbers[1])
          expect(firstResult).to(match("Bar"))
          expect(secondResult).to(match("Bar"))
        }
        
        it("must be return 'Qix' when the number is divisible per 7") {
          let numbers = [7, 14]
          let firstResult = FooBarQix.divisibleValue(for: numbers[0])
          let secondResult = FooBarQix.divisibleValue(for: numbers[1])
          expect(firstResult).to(match("Qix"))
          expect(secondResult).to(match("Qix"))
        }
      }
    }
    
    
    describe("intermediate treatment - numbers containing special values") {
      
      context("must be return specials values when the numbers contain 3, 5 or 7") {
        
        it("must be return 'Foo' when the number contain 3") {
          let numbers = [3, 13]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("Foo"))
          expect(secondResult).to(match("Foo"))
        }
        
        it("must be return 'Bar' when the number contain 5") {
          let numbers = [5, 15]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("Bar"))
          expect(secondResult).to(match("Bar"))
        }
        
        it("must be return 'Qix' when the number contain 7") {
          let numbers = [7, 17]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("Qix"))
          expect(secondResult).to(match("Qix"))
        }
        
        it("must be return n*'Foo' when the numbers contain n*3") {
          let numbers = [33, 333]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("FooFoo"))
          expect(secondResult).to(match("FooFooFoo"))
        }
        
        it("must be return n*'Bar' when the numbers contain n*5") {
          let numbers = [55, 555]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("BarBar"))
          expect(secondResult).to(match("BarBarBar"))
        }
        
        it("must be return n*'Qix' when the numbers contain n*7") {
          let numbers = [77, 777]
          let firstResult = FooBarQix.containingValue(for: numbers[0])
          let secondResult = FooBarQix.containingValue(for: numbers[1])
          expect(firstResult).to(match("QixQix"))
          expect(secondResult).to(match("QixQixQix"))
        }
      }
      
    }
    describe("final traitement") {
      
      context("must be return the initial value when the numbers are not divisible and do not contain 3, 5 or 7") {
        
        it("must be return initial value when the number isn't divisible per 3, 5 or 7") {
          let number = 1
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("1"))
        }
        
        it("must be return initial value when the number do not contain 3, 5 or 7") {
          let number = 8
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("8"))
        }
      }
      
      context("must be return specials values when the numbers contain and are divisible per 3, 5 or 7") {
        
        it("must be return 'FooFoo' when the number contain and is divisible per 3") {
          let number = 3
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("FooFoo"))
        }
        
        it("must be return 'BarBar' when the number contain and is divisible per 5") {
          let number = 5
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("BarBar"))
        }
        
        it("must be return 'QixQix' when the number contain and is divisible per 7") {
          let number = 7
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("QixQix"))
        }
        
        ////
        it("the number is divisible per many special digits and contain the digit 3") {
          let number = 33
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("FooFooFoo"))
        }
        
        it("the number is divisible per many special digits and contain the digit 5") {
          let number = 15
          let result = FooBarQix.generateResult(for: number)
          expect(result).to(match("FooBarBar"))
        }
      }
    }
  }
}


