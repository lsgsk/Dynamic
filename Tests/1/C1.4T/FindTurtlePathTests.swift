import XCTest
import Matrix
@testable import C1_4

final class FindTurtlePathTests: XCTestCase
{
    func test_empty() throws {
        let matrix = Matrix(array: [5], n: 1, m: 1)!
        let result = [Point(i: 0, j: 0)]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
    
    func test_fromBook() throws {
        let matrix = Matrix(array: [9 ,8 ,6 ,2,
                                    10,11,13,11,
                                    3 ,7 ,12,8,
                                    5 ,9 ,13,9], n: 4, m: 4)!
        let result = [
            Point(i: 0, j: 3),
            Point(i: 1, j: 3),
            Point(i: 2, j: 3),
            Point(i: 2, j: 2),
            Point(i: 2, j: 1),
            Point(i: 3, j: 1),
            Point(i: 3, j: 0),
        ]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
    
    func test_oneWay() {
        let matrix = Matrix(array: [0,0,1,1,
                                    0,1,1,0,
                                    1,1,0,0,
                                    1,0,0,0], n: 4, m: 4)!
        let result = [
            Point(i: 0, j: 3),
            Point(i: 0, j: 2),
            Point(i: 1, j: 2),
            Point(i: 1, j: 1),
            Point(i: 2, j: 1),
            Point(i: 2, j: 0),
            Point(i: 3, j: 0),
        ]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
    
    func test_leftCornerWay() {
        let matrix = Matrix(array: [1,1,1,1,
                                    1,0,0,0,
                                    1,0,0,0,
                                    1,0,0,0], n: 4, m: 4)!
        let result = [
            Point(i: 0, j: 3),
            Point(i: 0, j: 2),
            Point(i: 0, j: 1),
            Point(i: 0, j: 0),
            Point(i: 1, j: 0),
            Point(i: 2, j: 0),
            Point(i: 3, j: 0),
        ]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
    
    func test_rightCornerWay() {
        let matrix = Matrix(array: [0,0,0,1,
                                    0,0,0,1,
                                    0,0,0,1,
                                    1,1,1,1], n: 4, m: 4)!
        let result = [
            Point(i: 0, j: 3),
            Point(i: 1, j: 3),
            Point(i: 2, j: 3),
            Point(i: 3, j: 3),
            Point(i: 3, j: 2),
            Point(i: 3, j: 1),
            Point(i: 3, j: 0),
        ]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
    
    func test_noWay() {
        let matrix = Matrix(array: [0,0,0,0,
                                    0,0,0,0,
                                    0,0,0,0,
                                    0,0,0,0], n: 4, m: 4)!
        let result = [
            Point(i: 0, j: 3),
            Point(i: 0, j: 2),
            Point(i: 0, j: 1),
            Point(i: 0, j: 0),
            Point(i: 1, j: 0),
            Point(i: 2, j: 0),
            Point(i: 3, j: 0),
        ]
        XCTAssertEqual(try matrix.findTurtlePathByDynamic(), result)
    }
}
