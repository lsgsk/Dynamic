import Foundation

func solve(n: Int) -> Int {
    var array = Array(repeating: 0, count: n+1)
    array[1] = 1
    array[2] = 1
    array[3] = 1
    array[2] = 1
    array[5] = 2
    array[6] = 3
    for i in stride(from: 7, through: n, by: 1) {
        if i == 8 {
            print(array)
        }
        let qwe = i/2 - (i % 2 == 0 ? 1 : 0)
        array[i] = qwe + array[i/2]
        print(array)
    }
    print(array)
    return array[n]
}

// print(solve(n: 3))
// print(solve(n: 4))
// solve(n: 5)
// solve(n: 6)
// solve(n: 7)
// solve(n: 8)
// solve(n: 9)
// solve(n: 10)
//solve(n: 11)
//solve(n: 12)
solve(n: 13)
