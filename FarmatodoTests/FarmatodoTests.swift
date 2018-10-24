//
//  FarmatodoTests.swift
//  FarmatodoTests
//
//  Created by JULIAN RAMOS on 10/24/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import XCTest
@testable import Farmatodo

class FarmatodoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStringMathViewModel_CalculateString(){
        
        let expectedResponse = "10"
        let stringEquiation = "5+5"
        
        let stringMath = mStringMath(data:stringEquiation)
        let stringMathViewModel = StringMathViewModel(math:stringMath)
        
        XCTAssertEqual(expectedResponse, stringMathViewModel.calculateString())
    }
    
    func testStringMathViewModel_valditeMultiple(){
        
        let mutiple = "3"
        let number = "15"
        
        let stringMath = mStringMath(data:number)
        let stringMathViewModel = StringMathViewModel(math:stringMath)
        
         XCTAssertEqual(mutiple, stringMathViewModel.validateMultiple())
        
    }
    
}
