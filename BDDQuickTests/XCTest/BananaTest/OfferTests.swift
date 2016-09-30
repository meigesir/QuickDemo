//
//  OfferTests.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import XCTest
@testable import BDDQuick

class OfferTests: XCTestCase {
    var banana: Banana!
    
    override func setUp() {
        super.setUp()
        banana = Banana()
    }
    
    func testOffer_whenTheBananaIsPeeled_offersTheBanana() {
        // Arrange: Peel the banana.
        banana = createNewPeeledBanana()
        
        // Act: Create the string used to offer the banana.
        let message = offer(banana)
        
        // Assert: Verify it's the right string.
        XCTAssertEqual(message, "Hey, want a banana?")
    }
    
    func testOffer_whenTheBananaIsntPeeled_offersToPeelTheBanana() {
        // Act: Create the string used to offer the banana.
        let message = offer(banana)
        
        // Assert: Verify it's the right string.
        XCTAssertEqual(message, "Hey, want me to peel this banana for you?")
    }
    
    override func tearDown() {
        super.tearDown()
        banana = nil
    }
    
}
