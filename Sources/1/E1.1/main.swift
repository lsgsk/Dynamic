import Foundation
import Matrix

let matrix = Matrix(array: [9, 8, 6, 2,
                            10, 11, 13, 11,
                            3, 7, 12, 8,
                            5, 9, 13, 9], n: 4, m: 4)!
print(matrix.findSubMatrixWith(sumOfElements: 32))
