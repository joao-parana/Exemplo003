//
//  Exemplo003Tests.swift
//  Exemplo003Tests
//
//  Created by Joao Ferreira on 9/30/14.
//  Copyright (c) 2014 si. All rights reserved.
//

import UIKit
import XCTest
import Exemplo003

class Exemplo003Tests: XCTestCase {
    // Para execução de cada método de teste é criado uma instancia de Firewood
    let firewood = Firewood()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of 
        // each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation
        // of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    func test_1_Shouldnt_be_charred_before_burning_on_first_time() {
        println("testing that we have a new object in 1st test")
        assert(!firewood.charred, "shouldn’t be charred before burning")
        firewood.burn()
    }
    func test_2_Shouldnt_be_charred_before_burning() {
        println("testing that we have a new object in 2nd test")
        assert(!firewood.charred, "shouldn’t be charred before burning")
        firewood.burn()
    }
    func test_3_Should_be_charred_after_burning() {
        firewood.burn()
        // a madeira deve estar carbonizada após a queima (incendio)
        assert(firewood.charred, "should be charred after burning")
    }
    
}
