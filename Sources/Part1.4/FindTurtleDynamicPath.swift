import Foundation
import Matrix

extension Matrix {
    func findTurtlePathByDynamic() throws -> [Point] {
        guard let weights = Matrix(n: self.n, m: self.m) else { throw TurtleError.invalidMatrix }

        func findMaxWeightFor(i: Int, j: Int) -> Int {
            switch (i, j) {
            case (0, self.m-1): return self[0, self.m-1]
            case (_, self.m-1): return weights[i-1, self.m-1] + self[i, self.m-1]
            case (0, _): return weights[0, j+1] + self[0, j]
            default: return self[i, j] + max(max(weights[i-1, j], weights[i, j+1]), weights[i-1, j+1])
            }
        }

        func findTurtlePath() throws -> [Point] {
            var path = [Point]()
            var i = self.n-1
            var j = 0
            while !(i == 0 && j == self.m-1) {
                path.append(Point(i: i, j: j))
                switch (i, j, weights[i, j] - self[i, j]) {
                case (0, _, _): j+=1
                case (_, self.m-1, _): i-=1
                case (_, _, weights[i-1, j]): i-=1
                case (_, _, weights[i, j+1]): j+=1
                default: throw TurtleError.pathNotFound
                }
            }
            path.append(Point(i: i, j: j))
            return path.reversed()
        }

        func findMoveWeights(i: Int, j: Int) {
            weights[i, j] = findMaxWeightFor(i: i, j: j)
            if i != self.n-1 || j != 0 {
                for n in i+1..<self.n {
                    weights[n, j] = findMaxWeightFor(i: n, j: j)
                }
                for m in stride(from: j, through: 0, by: -1) {
                    weights[i, m] = findMaxWeightFor(i: i, j: m)
                }
                findMoveWeights(i: i+1, j: j-1)
            }
        }

        findMoveWeights(i: 0, j: self.m-1)
        return try findTurtlePath()
    }
}
