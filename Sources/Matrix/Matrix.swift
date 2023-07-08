import Foundation

public final class Matrix {
    public let n: Int
    public let m: Int
    private var array: [Int]

    public init?(n: Int, m: Int) {
        guard n >= 1, m>=1 else { return nil }
        self.n = n
        self.m = m
        self.array = Array(repeating: 0, count: n * m)
    }

    public init?(array: [Int], n: Int, m: Int) {
        guard array.count == (n * m) else { return nil }
        self.n = n
        self.m = m
        self.array = array
    }

    public subscript(_ i: Int, _ j: Int) -> Int {
        get {
            self.array[j * self.n + i]
        }
        set(newValue) {
            self.array[j * self.n + i] = newValue
        }
    }

    public func print() {
        for j in 0..<m {
            var line = ""
            for i in 0..<n {
                line += String(format: "%3d", self.array[j * n + i])
            }
            Swift.print("\(line)")
        }
    }
}
