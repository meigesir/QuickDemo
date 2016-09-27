//
//  BananaTests.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import XCTest
@testable import BDDQuick

class BananaTests: XCTestCase {
    
    func testPeel_makesTheBananaEdible() {
        
        // Arrange: Create the banana we'll be peeling.
        let banana = Banana()
        
        // Act: Peel the banana.
        banana.peel()
        
        // Assert: Verify that the banana is now edible.
        XCTAssertTrue(banana.isEdible)
        
    }
    
}
