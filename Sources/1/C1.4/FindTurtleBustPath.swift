import Foundation
import Matrix

extension Matrix {
    func findMaxPathSumByBust() -> Int {
        func find(i: Int, j: Int) -> Int {
            if i == self.n-1, j == 0 {
                return self[i, j]
            } else if i == n-1 {
                return self[i, j] + find(i: i, j: j-1)
            } else if j == 0 {
                return self[i, j] + find(i: i+1, j: j)
            } else {
                return self[i, j] + max(find(i: i+1, j: j), find(i: i, j: j-1))
            }
        }
        return find(i: 0, j: self.m-1)
    }
}
