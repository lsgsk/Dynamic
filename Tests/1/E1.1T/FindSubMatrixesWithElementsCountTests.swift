import XCTest
@testable import E1_1
@testable import Matrix

final class FindSubMatrixesWithElementsCountTests: XCTestCase
{
    func test_oneEqualElement() throws {
        let matrix = Matrix(array: [5], n: 1, m: 1)!
        let result = [SubMatrix(i: 0, j: 0, width: 1, height: 1)]
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 5), result)
    }
    
    func test_oneNotEqualElement() throws {
        let matrix = Matrix(array: [5], n: 1, m: 1)!
        let result = [SubMatrix]()
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 0), result)
    }
    
    func test_oneSubmatrix() throws {
        let matrix = Matrix(array: [9 ,8 ,6 ,2,
                                    10,11,13,11,
                                    3 ,7 ,12,8,
                                    5 ,9 ,13,9], n: 4, m: 4)!
        let result = [SubMatrix(i: 2, j: 0, width: 2, height: 2)]
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 32), result)
    }
    
    func test_manySubmatrix() throws {
        let matrix = Matrix(array: [9 ,8 ,5 ,5,
                                    20,15,5 ,5,
                                    2 ,0 ,0, 8,
                                    9 ,9 ,13,9], n: 4, m: 4)!
        let result = [
            SubMatrix(i: 0, j: 1, width: 1, height: 1),
            SubMatrix(i: 0, j: 2, width: 2, height: 2),
            SubMatrix(i: 1, j: 1, width:2, height: 1),
            SubMatrix(i: 1, j: 1, width: 2, height: 2),
            SubMatrix(i: 2, j: 0, width: 2, height: 2),
        ]
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 20), result)
    }
    
    func test_fullSubmatrix() throws {
        let matrix = Matrix(array: [9 ,8 ,6 ,2,
                                    10,11,13,11,
                                    3 ,7 ,12,8,
                                    5 ,9 ,13,9], n: 4, m: 4)!
        let result = [SubMatrix(i: 0, j: 0, width: 4, height: 4)]
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 136), result)
    }
    
    func test_noResults() throws {
        let matrix = Matrix(array: [9 ,8 ,6 ,2,
                                    10,11,13,11,
                                    3 ,7 ,12,8,
                                    5 ,9 ,13,9], n: 4, m: 4)!
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 1), [SubMatrix]())
    }
    
    func test_allPossible() throws {
        let matrix = Matrix(array: [1,1,1,1,1,1,1,1,1], n: 3, m: 3)!
        let result = [
            SubMatrix(i: 0, j: 0, width: 2, height: 2),
            SubMatrix(i: 0, j: 1, width: 2, height: 2),
            SubMatrix(i: 1, j: 0, width: 2, height: 2),
            SubMatrix(i: 1, j: 1, width: 2, height: 2),
        ]
        XCTAssertEqual(matrix.findSubMatrixWith(sumOfElements: 4), result)
    }
}
