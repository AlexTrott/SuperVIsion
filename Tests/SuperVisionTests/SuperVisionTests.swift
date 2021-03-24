import XCTest
@testable import SuperVision

final class SuperVisionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SuperVision().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
