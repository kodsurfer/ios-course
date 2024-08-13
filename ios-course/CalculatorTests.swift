import XCTest
@testable import YourAppModule

class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        calculator = nil
        super.tearDown()
    }

    func testPlus() {
        XCTAssertEqual(calculator.plus(2, 3), 5)
    }

    func testMinus() {
        XCTAssertEqual(calculator.minus(5, 3), 2)
    }

    func testMultiply() {
        XCTAssertEqual(calculator.multiply(2, 3), 6)
    }

    func testDivide() {
        XCTAssertEqual(calculator.divide(6, 3), 2)
        XCTAssertTrue(calculator.divide(6, 0).isNaN)
    }
}
