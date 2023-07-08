import Foundation

public final class SubSquare: Equatable, CustomStringConvertible {
    public let i: Int
    public let j: Int
    public let size: Int
    
    public init(i: Int, j: Int, size: Int) {
        self.i = i
        self.j = j
        self.size = size
    }
    
    public static func == (lhs: SubSquare, rhs: SubSquare) -> Bool {
        lhs.i == rhs.i && lhs.j == rhs.j && lhs.size == rhs.size
    }
    
    public var description: String {
        "\(type(of: self)) i:\(i), j:\(j), size:\(size)"
    }
}
