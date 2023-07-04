import Foundation
import Matrix
func findMaxSquareByBust(in matrix: Matrix) -> Subsquare?  {
    func isFilledSquare(in matrix: Matrix, row: Int, col: Int, size: Int) -> Bool {
        for i in 0..<size {
            for j in 0..<size {
                guard matrix[row+i, col+j] == 1 else { return false }
            }
        }
        return true
    }

    func findSquareWithSize(in matrix: Matrix, size: Int) -> Subsquare? {
        let count = min(matrix.n, matrix.m) - size + 1;
        for row in 0..<count {
            for col in 0..<count {
                if isFilledSquare(in: matrix, row: row, col: col, size: size) {
                    return Subsquare(i: row, j: col, size: size)
                }
            }
        }
        return nil
    }
    
    for i in stride(from: min(matrix.n, matrix.m), to: 0, by: -1) {
        let square = findSquareWithSize(in: matrix, size: i)
        if square != nil { return square }
    }
    return nil
}
