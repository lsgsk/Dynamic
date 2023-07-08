import Foundation

public struct SubMatrix: Equatable, CustomStringConvertible {
    public let i: Int
    public let j: Int
    public let width: Int
    public let height: Int

    public init(i: Int, j: Int, width: Int, height: Int) {
        self.i = i
        self.j = j
        self.width = width
        self.height = height
    }

    public static func == (lhs: SubMatrix, rhs: SubMatrix) -> Bool {
        lhs.i == rhs.i && lhs.j == rhs.j && lhs.width == rhs.width && lhs.height == rhs.height
    }

    public var description: String {
        "\(type(of: self)) i:\(i), j:\(j), width:\(width), height: \(height)"
    }
}
