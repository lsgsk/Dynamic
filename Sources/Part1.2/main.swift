import Foundation

func combRecursion(n: Int, k: Int) -> Int {
    guard n >= 1, k >= 1, k<=n else { return -1 }
    func comb (n: Int, k: Int) -> Int {
        (k == 0 || k == n) ? 1 : comb(n: n-1, k: k) + comb(n: n-1, k: k-1)
    }
    return comb(n: n, k: k)
}

func combDynamic(n: Int, k: Int) -> Int {
    guard n >= 1, k >= 1, k<=n else { return -1 }
    var triangle = Array(repeating: [Int](), count: n+1)
    for i in 0...n {
        triangle[i] = Array(repeating: 0, count: i+1)
    }
    for i in stride(from: 0, to: n+1, by: 1) {
        triangle[i][0] = 1
        triangle[i][i] = 1
        for j in stride(from: 1, to: i, by: 1) {
            triangle[i][j] = triangle[i-1][j-1]+triangle[i-1][j]
        }
    }
//    for i in 0...n {
//        var a = ""
//        for j in 0...i {
//            a += String(format: "%3d", triangle[i][j])
//        }
//        print("\(a)")
//    }
    return triangle[n][k]
}

print(combRecursion(n: 5, k: 2))
print(combDynamic(n: 5, k: 2))
