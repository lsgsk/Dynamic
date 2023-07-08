import Foundation
import Matrix

extension Matrix
{
    public func findSubMatrixWithMaxSumOfElements() -> SubMatrix {
        guard self.n != self.m else { return SubMatrix(i: 0, j: 0, width: n, height: m) }
        var cache = [Int](repeating: 0, count: self.n >= self.m ? self.n: self.m)
        for i in 0..<self.n{
            for j in 0..<self.m {
                cache[self.n >= self.m ? i: j] += self[i, j]
            }
        }
        var maxSumOfElements = Int.min
        var subMatrix = SubMatrix(i: 0, j: 0, width: n, height: m)
        let size = min(self.n, self.m)
        for index in 0...cache.count-size {
            let sumOfElements = cache[index..<index+size].reduce(0, +)
            if sumOfElements > maxSumOfElements {
                maxSumOfElements = sumOfElements
                subMatrix = SubMatrix(i: self.n >= self.m ? index : 0,
                                      j: self.n >= self.m ? 0 : index,
                                      width: size, height: size)
            }
        }
        return subMatrix
    }
}
