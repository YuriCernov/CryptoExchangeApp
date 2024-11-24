//
//  ScrollingPerformanceTests.swift
//  CryptoExchangeUITests
//
//  Created by Yuri Cernov on 13/11/2024.
//

import XCTest

final class ScrollingPerformanceTests: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app = nil
    }
    
    func testTradeHistoryScrolling() throws {
        app.buttons["TradeHistory"].tap()
        
        // measure - for repeating for about 5 times the same moves
        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric]) {
            app.swipeUp()
            app.swipeDown()
        }
    }
    
    func testWalletsScrolling() throws {
        app.buttons["Wallets"].tap()
        
        // measure - for repeating for about 5 times the same moves
        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric]) {
            app.swipeUp()
            app.swipeDown()
        }
    }
    
    func testTradeScrolling() throws {
        app.buttons["Trade"].tap()
        
        // measure - for repeating for about 5 times the same moves
        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric]) {
            app.swipeUp()
            app.swipeDown()
        }
    }
    
}
