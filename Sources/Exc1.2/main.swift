import Foundation
import Matrix

let matrix = Matrix(array: [9,8,6,2,
                            3,7,2,8,
                            5,9,3,9], n: 4, m: 3)!
print(matrix.findSubMatrixWithMaxSumOfElements())
