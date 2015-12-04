//
//  ToDoListUITests.swift
//  ToDoListUITests
//
//  Created by iosdevlog on 15/12/1.
//  Copyright © 2015年 iosdevlog. All rights reserved.
//

import XCTest

class ToDoListUITests: XCTestCase {
        
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
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAddToDoItem() {
        
        let app = XCUIApplication()
        
        let cellsCount = app.cells.count
        
        let addButton = app.navigationBars["My To-Do Item"].buttons["Add"]
        addButton.tap()
        
        let textField = app.childrenMatchingType(.Window).elementBoundByIndex(0).childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.TextField).element
        textField.tap()
        textField.typeText("Buy A New iPad.")
        
        let addToDoItemNavigationBar = app.navigationBars["Add To-Do Item"]
        addToDoItemNavigationBar.buttons["Cancel"].tap()
        
        XCTAssertEqual(app.cells.count, cellsCount)
        
        addButton.tap()
        textField.tap()
        
        let doneButton = addToDoItemNavigationBar.buttons["Done"]
        doneButton.tap()
        
        XCTAssertEqual(app.cells.count, cellsCount)
        
        addButton.tap()
        textField.tap()
        textField.typeText("Buy an iPad\r")
        doneButton.tap()
        
        
        XCTAssertEqual(app.cells.count, cellsCount+1)
    }
    
    func testCheckMack() {
        
        let tablesQuery = XCUIApplication().tables
        let cell0 = tablesQuery.cells.elementBoundByIndex(0)
        
        let buyMilkStaticText = tablesQuery.staticTexts["Buy milk"]
        
        buyMilkStaticText.tap()
        XCTAssertEqual(cell0.value as? String, "true")
        
        cell0.tap()
        XCTAssertEqual(cell0.value as? String, "false")
        
        buyMilkStaticText.tap()
        XCTAssertEqual(cell0.value as? String, "true")
        
        let buyEggStaticText = tablesQuery.staticTexts["Buy eggs"]
            
        buyEggStaticText.tap()
        
        
        buyMilkStaticText.tap()
    }
}
