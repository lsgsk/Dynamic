import Foundation
import Matrix

func findMaxSquareByDynamic(in matrix: Matrix) -> SubSquare?  {
    guard let rows = Matrix(n: matrix.n, m: matrix.m) else { return nil }
    guard let coloms = Matrix(n: matrix.n, m: matrix.m) else { return nil }
    for i in 0..<matrix.n {
        for j in 0..<matrix.m {
            rows[i, j] = i == 0 ? matrix[0, j] : matrix[i, j] == 1 ? rows[i-1, j] + 1 : 0
            coloms[i, j] = j == 0 ? matrix[i, 0] : matrix[i, j] == 1 ? coloms[i, j-1] + 1 : 0
        }
    }
    var subsquare: SubSquare?
    for i in stride(from: matrix.n-1, through: 0, by: -1) {
        for j in stride(from: matrix.m-1, through: 0, by: -1) {
            let size = min(rows[i, j], coloms[i, j])
            if size > 0 {
                var found = true
                for h in stride(from: size-1, to: 0, by: -1) {
                    if rows[i, j-h] < size {
                        found = false
                        break
                    }
                }
                if found, (subsquare?.size ?? -1) < size {
                    subsquare = SubSquare(i: i-size+1, j: j-size+1, size: size)
                }
            }
        }
    }
    return subsquare
}
