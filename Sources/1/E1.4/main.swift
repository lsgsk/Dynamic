import Foundation

public func ledder(n: Int) -> Int {
    func stair(prevLevel: Int, n: Int) -> Int {
        if n == 0 { return 1 }
        var count = 0
        var level = 1
        while level < prevLevel {
            if (n - level) < 0 {
                break
            }
            count += stair(prevLevel: level, n: n - level)
            level += 1
        }
        return count
    }
    guard n > 0 else { return 0 }
    guard n > 3 else { return 1 }
    return stair(prevLevel: n+1, n: n)-1
}

for index in 0..<10 {
    print("\(index): \(ledder(n: index))")
}
