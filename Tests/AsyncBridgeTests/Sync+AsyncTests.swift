//
//  Sync+AsyncTests.swift
//  
//
//  Created by Brian Semiglia on 7/14/22.
//

import XCTest
@testable import AsyncBridge

class Sync_AsyncTests: XCTestCase {

    func test() async {

        final class Input {
            func five (a: Int, b: Int, c: Int, d: Int, e: Int) -> Int { 5 }
            func four (a: Int, b: Int, c: Int, d: Int) -> Int { 4 }
            func three(a: Int, b: Int, c: Int) -> Int { 3 }
            func two  (a: Int, b: Int) -> Int { 2 }
            func one  (a: Int) -> Int { 1 }
        }

        let five = await Input().five >>> (a: 3, b: 3, c: 3, d: 3, e: 3)
        XCTAssertEqual(five, 5)

        let four = await Input().four >>> (a: 3, b: 3, c: 3, d: 3)
        XCTAssertEqual(four, 4)

        let three = await Input().three >>> (a: 3, b: 3, c: 3)
        XCTAssertEqual(three, 3)

        let two = await Input().two >>> (a: 3, b: 3)
        XCTAssertEqual(two, 2)

        let one = await Input().one >>> (3)
        XCTAssertEqual(one, 1)
    }

}
