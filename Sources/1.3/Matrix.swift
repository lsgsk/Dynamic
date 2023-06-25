import Foundation

class Matrix
{
    let n: Int
    let m: Int
    private var array: [Int]
   
    init?(n: Int, m: Int) {
        guard n >= 1, m>=1 else { return nil }
        self.n = n
        self.m = m
        self.array = Array(repeating: 0, count: n * m)
    }
    
    init?(array: [Int], n: Int, m: Int) {
        guard array.count == (n * m) else { return nil }
        self.n = n
        self.m = m
        self.array = array
    }
    
    subscript(_ i: Int, _ j: Int) -> Int {
        get {
            self.array[j * self.n + i]
        }
        set(newValue) {
            self.array[j * self.n + i] = newValue
        }
    }
    
    func printMatrix() {
        for j in 0..<m {
            var a = ""
            for i in 0..<n {
                a += String(format: "%3d", self.array[j * n + i])
            }
            print("\(a)")
        }
    }
}
