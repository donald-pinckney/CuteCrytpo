import Types

let xor: (ByteString, ByteString) -> ByteString = componentWiseExtend(^)
public extension Sequence where Iterator.Element == Byte {
    static func ^(left: Self, right: Self) -> ByteString {
        return xor(Array(left), Array(right))
    }
}



infix operator **: BitwiseShiftPrecedence
public extension UInt {
    static func **(left: UInt, right: UInt) -> UInt {
        var x: UInt = 1
        for _ in 0..<right {
            x *= left
        }
        return x
    }
}

public extension Int {
    static func **(left: Int, right: Int) -> UInt {
        precondition(left >= 0 && right >= 0)
        return UInt(left) ** UInt(right)
    }
}