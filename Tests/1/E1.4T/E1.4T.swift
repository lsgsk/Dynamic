import XCTest
import E1_4

final class E1_4T: XCTestCase
{
    func test_count_stair() throws {
        XCTAssertEqual(ledder(n: -1), 0)
        XCTAssertEqual(ledder(n: 0), 0)
        XCTAssertEqual(ledder(n: 1), 1)
        XCTAssertEqual(ledder(n: 2), 1)
        XCTAssertEqual(ledder(n: 3), 1)
        XCTAssertEqual(ledder(n: 4), 1)
        XCTAssertEqual(ledder(n: 5), 2)
        XCTAssertEqual(ledder(n: 6), 3)
        XCTAssertEqual(ledder(n: 7), 4)
        XCTAssertEqual(ledder(n: 8), 5)
        XCTAssertEqual(ledder(n: 9), 7)
        XCTAssertEqual(ledder(n: 10), 9)
        XCTAssertEqual(ledder(n: 12), 14)
    }
}
