//
//  shoppingTests.swift
//  shoppingTests
//
//  Created by Ahmed Mohamed El-Desouky on 10/31/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//

import XCTest

class shoppingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssert(Amount.getTotal(forCount: 5, andPrice: 12) == 60 )
        XCTAssert(Amount.getTotal(forCount: 6, andPrice: 17.79) == 107 )
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
