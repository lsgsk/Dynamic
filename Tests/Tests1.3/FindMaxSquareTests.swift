import XCTest
@testable import Part1_3
@testable import Matrix

final class FindMaxSquareTests: XCTestCase
{
    func test_findMaxSquareByDynamic_1() {
        let matrix = Matrix(array: [], n: 0, m: 0)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), nil)
    }

    func test_findMaxSquareByDynamic_2() {
        let matrix = Matrix(array: [0], n: 1, m: 1)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), nil)
    }
    
    func test_findMaxSquareByDynamic_3() {
        let matrix = Matrix(array: [1], n: 1, m: 1)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 0, j: 0, size: 1))
    }
    
    func test_findMaxSquareByDynamic_4() {
        let matrix = Matrix(array: [0,0,0,0], n: 2, m: 2)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), nil)
    }
    
    func test_findMaxSquareByDynamic_5() {
        let matrix = Matrix(array: [1,1,1,1], n: 2, m: 2)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 0, j: 0, size: 2))
    }
    
    func test_findMaxSquareByDynamic_6() {
        let matrix = Matrix(array: [0,1,0,1,1,1,1,
                                    0,1,1,1,1,0,0,
                                    1,0,1,1,1,1,1,
                                    1,1,1,1,1,1,1,
                                    1,0,1,1,1,1,1,
                                    1,1,0,0,1,1,0], n: 7, m: 6)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 4, j: 2, size: 3))
    }
    
    func test_findMaxSquareByDynamic_7() throws {
        let matrix = Matrix(array: [0,0,0,0,0,0,0,
                                    0,1,1,1,1,1,0,
                                    0,1,1,1,1,1,0,
                                    0,1,1,1,1,1,0,
                                    0,1,1,1,1,1,0,
                                    0,0,0,0,0,0,0], n: 7, m: 6)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 2, j: 1, size: 4))
    }
    
    func test_findMaxSquareByDynamic_8() throws {
        let matrix = Matrix(array: [0,0,0,0,0,0,0,
                                    0,0,0,0,0,0,0,
                                    0,0,1,1,1,1,0,
                                    0,0,1,1,1,1,0,
                                    0,0,1,1,1,1,0,
                                    0,0,1,1,1,1,0], n: 7, m: 6)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 2, j: 2, size: 4))
    }
    func test_findMaxSquareByDynamic_9() throws {
        let matrix = Matrix(array: [0,0,1,1,1,0,0,1,1,
                                    0,0,1,1,1,0,0,1,1,
                                    0,0,1,1,1,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,
                                    0,0,0,0,1,1,1,1,0,
                                    0,1,1,0,1,1,1,1,0,
                                    0,1,1,0,1,1,1,1,0,
                                    0,0,0,0,1,1,1,1,0,], n: 9, m: 8)!
        XCTAssertEqual(findMaxSquareByDynamic(in: matrix), Subsquare(i: 4, j: 4, size: 4))
    }
}



