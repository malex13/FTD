//
//  FastlaneTechTalkUITests.swift
//  FastlaneTechTalkUITests
//
//  Created by Marius Raducan on 08/09/16.
//  Copyright © 2016 Softvision. All rights reserved.
//

import XCTest

class FastlaneTechTalkUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        snapshot("first")
        XCUIDevice.sharedDevice().orientation = .Portrait
        XCUIDevice.sharedDevice().orientation = .LandscapeRight
        snapshot("firstLandscapeRight")
        XCUIDevice.sharedDevice().orientation = .PortraitUpsideDown
        XCUIDevice.sharedDevice().orientation = .LandscapeLeft
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        let tabBarsQuery = XCUIApplication().tabBars
        tabBarsQuery.buttons["Second"].tap()
        snapshot("second")
        XCUIDevice.sharedDevice().orientation = .LandscapeRight
        snapshot("secondLandscape")
        XCUIDevice.sharedDevice().orientation = .Portrait
        tabBarsQuery.buttons["First"].tap()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
