//
//  FarmatodoUITests.swift
//  FarmatodoUITests
//
//  Created by JULIAN RAMOS on 10/24/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import XCTest

class FarmatodoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.textFields["Introduce una ecuacion del tipo : 1+1"].tap()
        app.textFields["Introduce una ecuacion del tipo : 1+1"].typeText("10+10")
       

        let calcularEstasSeguroButton = app.buttons["Calcular ¿ Estas Seguro ?"]
        calcularEstasSeguroButton.tap()
      
        let table = app.tables.element(boundBy: 0)
        XCTAssertEqual(table.cells.count, 0)
        
        app.collectionViews.cells.otherElements.containing(.staticText, identifier:"UNIVERSE X SPECIAL: CAP 1 (2001)").element.tap()
        app.staticTexts["UNIVERSE X SPECIAL: CAP 1 (2001)"].tap()
       
        let universeXSpecialCap12001StaticText = app.staticTexts["UNIVERSE X SPECIAL: CAP 1 (2001)"]
        universeXSpecialCap12001StaticText.tap()
        
        XCTAssertEqual("UNIVERSE X SPECIAL: CAP 1 (2001)",universeXSpecialCap12001StaticText.label)
  
    }
    
}
