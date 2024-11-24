import XCTest

final class AppFlowTests: XCTestCase {
    
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
    
    func testNavigationBarSelection() {
        app.buttons["Home"].tap()
        
        XCTAssert(app.buttons["TradeHistory"].exists, "It chould have navigated to Trade History")
        XCTAssert(app.buttons["Wallets"].exists, "It chould have navigated to Wallets")
        XCTAssert(app.buttons["Trade"].exists, "It chould have navigated to Trade")
    }
}
