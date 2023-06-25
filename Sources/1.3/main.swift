import Foundation
import Matrix

//struct Subsquare
//{
//    let i: Int
//    let j: Int
//    let size: Int
//}

let matrix = Matrix(array: [0,1,0,1,1,1,1,
                            0,1,1,1,1,0,0,
                            1,0,1,1,1,1,1,
                            1,1,1,1,1,1,1,
                            1,0,1,1,1,1,1,
                            1,1,0,0,1,1,0], n: 7, m: 6)!
matrix.print()

if let square = findMaxSquareByBust(in: matrix) {
   print(square)
}
if let square = findMaxSquareByDynamic(in: matrix) {
    print(square)
}
