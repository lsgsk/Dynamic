import Foundation

struct Point: CustomStringConvertible, Equatable {
    let i: Int
    let j: Int
    var description: String { "(\(i);\(j))"}
}

enum TurtleError: Error {
    case invalidMatrix
    case pathNotFound
}
