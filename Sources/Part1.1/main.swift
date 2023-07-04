import Foundation

enum FibError: Error
{
    case tooLargeIndex
}

func fibR(n: UInt) throws -> UInt64 {
    guard n >= 2 else { return UInt64(n) }
    guard n<94 else { throw FibError.tooLargeIndex }
    return (try fibR(n: n-1)) + (try fibR(n: n-2))
}

func fibD(n: UInt) throws -> UInt64 {
    guard n >= 2 else { return UInt64(n) }
    guard n<94 else { throw FibError.tooLargeIndex }
    var a: UInt64 = 0
    var b: UInt64 = 1
    var c: UInt64 = 0
    for _ in 2...n {
        c = a + b
        a = b
        b = c
    }
    return c
}

func fib(n: UInt) throws -> UInt64 {
    // try fibR(n: n)
    try fibD(n: n)
}

do { print(try fib(n: 0)) } catch { print(error) }
do { print(try fib(n: 1)) } catch { print(error) }
do { print(try fib(n: 2)) } catch { print(error) }
do { print(try fib(n: 3)) } catch { print(error) }
do { print(try fib(n: 4)) } catch { print(error) }
do { print(try fib(n: 5)) } catch { print(error) }
do { print(try fib(n: 6)) } catch { print(error) }
do { print(try fib(n: 93)) } catch { print(error) }
do { print(try fib(n: 94)) } catch { print(error) }
do { print(try fib(n: 95)) } catch { print(error) }
