import Foundation

public func comb(n: Int, k: Int) -> Int {
    guard n >= 1, k >= 1, k<=n else { return -1 }
    let count = 1 + min(k, n-k)
    var array = Array(repeating: 1, count: count)
    for _ in 0..<max(k, n-k) {
        for j in stride(from: 1, to: count, by: 1) {
            array[j] += array[j-1]
        }
    }
    return array[count-1]
}

print(comb(n: 5, k: 2)) // 10
print(comb(n: 7, k: 2)) // 21
print(comb(n: 7, k: 3)) // 35
print(comb(n: 7, k: 4)) // 35
print(comb(n: 10, k: 4)) // 210
