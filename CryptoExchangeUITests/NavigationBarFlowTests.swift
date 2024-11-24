import XCTest

final class NavigationBarFlowTests: XCTestCase {

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
    
    // Buttons (Exists)
    func testNavigationBarButtinsSelection() {
        app.buttons["Home"].tap()
        
        XCTAssert(app.buttons["gearshape"].exists, "It chould have navigated to Settings")
        XCTAssert(app.buttons["profile_picture"].exists, "It chould have navigated to Account")
    }
    
    // Settings Button (Tap/SwipeDown)
    func testNavigationBarSettingsSelection() {
        app.buttons["Home"].tap()
        
        app.buttons["gearshape"].tap()
        app.scrollViews.otherElements.switches["Authenticator App"].swipeDown()
    }
    
    // Account Button (Tap/SwipeDown)
    func testNavigationBarAccountSelection() throws {
        app.buttons["Home"].tap()
        
        measure {
            app.buttons["profile_picture"].tap()
            app.images["profile_picture"].swipeDown()
        }
        
    }
}
