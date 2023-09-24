import XCTest
@testable import E1_2
@testable import Matrix

final class FindSubMatrixWithMaxSumOfElementsTests: XCTestCase
{
    func test_findSubMatrixWithMaxSumOfElementsTests1() {
        let matrix = Matrix(array: [9], n: 1, m: 1)!
        XCTAssertEqual(matrix.findSubMatrixWithMaxSumOfElements(), .init(i: 0, j: 0, width: 1, height: 1))
    }
    
    func test_findSubMatrixWithMaxSumOfElementsTests2() {
        let matrix = Matrix(array: [9,8,6,2,
                                    1,1,1,1,
                                    3,7,2,8,
                                    5,9,3,9], n: 4, m: 4)!
        XCTAssertEqual(matrix.findSubMatrixWithMaxSumOfElements(), .init(i: 0, j: 0, width: 4, height: 4))
    }
    
    func test_findSubMatrixWithMaxSumOfElementsTests3() {
        let matrix = Matrix(array: [9,8,6,2,
                                    1,1,3,2], n: 4, m: 2)!
        XCTAssertEqual(matrix.findSubMatrixWithMaxSumOfElements(), .init(i: 0, j: 0, width: 2, height: 2))
    }
    
    func test_findSubMatrixWithMaxSumOfElementsTests4() {
        let matrix = Matrix(array: [1,2,
                                    9,8,
                                    3,7,
                                    5,9], n: 2, m: 4)!
        XCTAssertEqual(matrix.findSubMatrixWithMaxSumOfElements(), .init(i: 0, j: 1, width: 2, height: 2))
    }
}
    
