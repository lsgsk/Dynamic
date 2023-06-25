import Foundation
import Matrix

func findMaxSquareByDynamic(in matrix: Matrix) -> Subsquare?  {
    guard let rows = Matrix(n: matrix.n, m: matrix.m) else { return nil }
    guard let coloms = Matrix(n: matrix.n, m: matrix.m) else { return nil }
    for i in 0..<matrix.n {
        for j in 0..<matrix.m {
            rows[i, j] = i == 0 ? matrix[0, j] : matrix[i, j] == 1 ? rows[i-1, j] + 1 : 0
            coloms[i, j] = j == 0 ? matrix[i, 0] : matrix[i, j] == 1 ? coloms[i, j-1] + 1 : 0
        }
    }
    var subsquare: Subsquare?
    for i in 0..<matrix.n {
        for j in 0..<matrix.m {
            let maxSquareSize = min(rows[i, j], coloms[i,j])
            var realSquareSize = 0
            for dv in stride(from: 1, through: maxSquareSize, by: 1) {
                if i-dv >= 0, j-dv >= 0, min(rows[i, j-dv], coloms[i-dv, j]) >= maxSquareSize - dv {
                    realSquareSize += 1
                }
            }
            if realSquareSize > subsquare?.size ?? -1 {
                subsquare = Subsquare(i: i - realSquareSize + 1, j: j - realSquareSize + 1, size: realSquareSize)
            }
        }
    }
    return subsquare
}
