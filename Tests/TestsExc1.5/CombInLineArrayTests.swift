import XCTest
import Exc1_5

final class CombInLineArrayTests: XCTestCase
{
    func testCombInLineArray() throws {
        XCTAssertEqual(comb(n: 5, k: 2), 10)
        XCTAssertEqual(comb(n: 7, k: 2), 21)
        XCTAssertEqual(comb(n: 7, k: 3), 35)
        XCTAssertEqual(comb(n: 7, k: 4), 35)
        XCTAssertEqual(comb(n: 10, k: 4), 210)
        XCTAssertEqual(comb(n: 1, k: 1), 1)
        XCTAssertEqual(comb(n: 2, k: 1), 2)
        XCTAssertEqual(comb(n: 3, k: 1), 3)
        XCTAssertEqual(comb(n: 3, k: 2), 3)
        XCTAssertEqual(comb(n: 3, k: 1), 3)
        XCTAssertEqual(comb(n: 1, k: 3), -1)
        XCTAssertEqual(comb(n: 6, k: 2), 15)
        XCTAssertEqual(comb(n: 8, k: 5), 56)
    }
}
