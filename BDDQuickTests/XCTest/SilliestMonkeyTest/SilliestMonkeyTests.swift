//
//  SilliestMonkeyTests.swift
//  BDDQuick
//
//  Created by phenix on 27/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import XCTest

import Nimble
import Quick
@testable import BDDQuick

class SilliestMonkeyTests: XCTestCase {
    
    func testSilliest_whenMonkeysContainSillyMonkeys_theyreIncludedInTheResult() {
        let kiki = Monkey(name: "Kiki", silliness: .extremelySilly)
        let carl = Monkey(name: "Carl", silliness: .notSilly)
        let jane = Monkey(name: "Jane", silliness: .verySilly)
        let sillyMonkeys = silliest([kiki, carl, jane])
        
//        XCTAssertTrue(sillyMonkeys.contains(kiki))
//        XCTAssertTrue(sillyMonkeys.contains(kiki), "Expected sillyMonkeys to contain 'Kiki'")
        
        // 使用Nimble
        expect(sillyMonkeys).to(contain(kiki))
        
    }
    
}
