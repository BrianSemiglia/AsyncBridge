import XCTest
@testable import Async

final class FiveTests: XCTestCase {

    func test() async {

        final class FiveIn {
            func fiveOut (a: Int, b: Int, c: Int, d: Int, e: Int, z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (a: Int, b: Int, c: Int, d: Int, e: Int, z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(a: Int, b: Int, c: Int, d: Int, e: Int, z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (a: Int, b: Int, c: Int, d: Int, e: Int, z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (a: Int, b: Int, c: Int, d: Int, e: Int, z: (Int) -> Void) { z(3) }
        }

        let five = await FiveIn().fiveOut >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await FiveIn().fourOut >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await FiveIn().threeOut >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await FiveIn().twoOut >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await FiveIn().oneOut >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(one, 3)
    }

}

final class FourTests: XCTestCase {

    func test() async {

        final class FourIn {
            func fiveOut (a: Int, b: Int, c: Int, d: Int, z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (a: Int, b: Int, c: Int, d: Int, z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(a: Int, b: Int, c: Int, d: Int, z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (a: Int, b: Int, c: Int, d: Int, z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (a: Int, b: Int, c: Int, d: Int, z: (Int) -> Void) { z(3) }
        }

        let five = await FourIn().fiveOut >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await FourIn().fourOut >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await FourIn().threeOut >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await FourIn().twoOut >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await FourIn().oneOut >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(one, 3)
    }

}

final class ThreeTests: XCTestCase {

    func test() async {

        final class ThreeIn {
            func fiveOut (a: Int, b: Int, c: Int, z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (a: Int, b: Int, c: Int, z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(a: Int, b: Int, c: Int, z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (a: Int, b: Int, c: Int, z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (a: Int, b: Int, c: Int, z: (Int) -> Void) { z(3) }
        }

        let five = await ThreeIn().fiveOut >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await ThreeIn().fourOut >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await ThreeIn().threeOut >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await ThreeIn().twoOut >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await ThreeIn().oneOut >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(one, 3)
    }

}

final class TwoTests: XCTestCase {

    func test() async {

        final class TwoIn {
            func fiveOut (a: Int, b: Int, z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (a: Int, b: Int, z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(a: Int, b: Int, z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (a: Int, b: Int, z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (a: Int, b: Int, z: (Int) -> Void) { z(3) }
        }

        let five = await TwoIn().fiveOut >>> (a: 3, b: 3)
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await TwoIn().fourOut >>> (a: 3, b: 3)
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await TwoIn().threeOut >>> (a: 3, b: 3)
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await TwoIn().twoOut >>> (a: 3, b: 3)
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await TwoIn().oneOut >>> (a: 3, b: 3)
        XCTAssertEqual(one, 3)
    }

}

final class OneTests: XCTestCase {

    func test() async {

        final class OneIn {
            func fiveOut (a: Int, z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (a: Int, z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(a: Int, z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (a: Int, z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (a: Int, z: (Int) -> Void) { z(3) }
        }

        let five = await OneIn().fiveOut >>> (3)
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await OneIn().fourOut >>> (3)
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await OneIn().threeOut >>> (3)
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await OneIn().twoOut >>> (3)
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await OneIn().oneOut >>> (3)
        XCTAssertEqual(one, 3)
    }

}

final class ZeroTests: XCTestCase {

    func test() async {

        final class ZeroIn {
            func fiveOut (z: (Int, Int, Int, Int, Int) -> Void) { z(3,3,3,3,3) }
            func fourOut (z: (Int, Int, Int, Int) -> Void) { z(3,3,3,3) }
            func threeOut(z: (Int, Int, Int) -> Void) { z(3,3,3) }
            func twoOut  (z: (Int, Int) -> Void) { z(3,3) }
            func oneOut  (z: (Int) -> Void) { z(3) }
        }

        let five = await ZeroIn().fiveOut >>> ()
        XCTAssertEqual(five.0, 3)
        XCTAssertEqual(five.1, 3)
        XCTAssertEqual(five.2, 3)
        XCTAssertEqual(five.3, 3)
        XCTAssertEqual(five.4, 3)

        let four = await ZeroIn().fourOut >>> ()
        XCTAssertEqual(four.0, 3)
        XCTAssertEqual(four.1, 3)
        XCTAssertEqual(four.2, 3)
        XCTAssertEqual(four.3, 3)

        let three = await ZeroIn().threeOut >>> ()
        XCTAssertEqual(three.0, 3)
        XCTAssertEqual(three.1, 3)
        XCTAssertEqual(three.2, 3)

        let two = await ZeroIn().twoOut >>> ()
        XCTAssertEqual(two.0, 3)
        XCTAssertEqual(two.1, 3)

        let one = await ZeroIn().oneOut >>> ()
        XCTAssertEqual(one, 3)
    }

}
