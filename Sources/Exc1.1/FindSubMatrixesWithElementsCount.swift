import Matrix

extension Matrix
{
    public func findSubMatrixWith(sumOfElements: Int) -> [SubMatrix] {
        func calculateSumOf(submatrix: SubMatrix) -> Int {
            var count = 0
            for row in 0..<submatrix.width {
                for col in 0..<submatrix.height {
                    count += self[submatrix.i+row, submatrix.j+col]
                }
            }
            return count
        }
        
        func findAllSubMatrixIn(matrix: SubMatrix, sumOfElements: Int) -> [SubMatrix] {
            var found = [SubMatrix]()
            for sWidth in 1...matrix.width {
                for sHeight in 1...matrix.height {
                    let submatrix = SubMatrix(i: matrix.i, j: matrix.j, width: sWidth, height: sHeight)
                    if sumOfElements == calculateSumOf(submatrix: submatrix) {
                        found.append(submatrix)
                    }
                }
            }
            return found
        }
        
        var found = [SubMatrix]()
        for i in 0..<self.n {
            for j in 0..<self.m {
                let matrix = SubMatrix(i: i, j: j, width: self.n - i, height: self.m - j)
                findAllSubMatrixIn(matrix: matrix, sumOfElements: sumOfElements).forEach {
                    found.append($0)
                }
            }
        }
       return found
    }
}
