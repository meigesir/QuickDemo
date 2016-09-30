//
//  GorillaDBTests.swift
//  BDDQuick
//
//  Created by phenix on 30/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import XCTest
@testable import BDDQuick

class GorillaDBTests: XCTestCase {
    
    // MARK: - Behavioral Tests
    
    func testSave_savesTheBananaToTheDatabase() {
        // Arrange: Create a database and get its original size.
        let database = GorillaDB()
        
        // Act: Save a banana to the database.
        let banana = Banana()
        database.save(banana: banana, key: "test-banana")
        // Assert: The bananas saved to and loaded from the database should be the same.
        XCTAssertEqual(database.load(key: "test-banana"), banana)
    }
    
    // MARK: - Brittle Tests
    
//    func testSave_savesTheBananaToTheDatabase() {
//        // Arrange: Create a database and get its original size.
//        let database = GorillaDB()
//        let originalSize = database.size
//        
//        // Act: Save a banana to the database.
//        let banana = Banana()
//        database.save(banana: banana, key: "test-banana")
//        
//        // Assert: The size of the database should have increased by one.
//        XCTAssertEqual(database.size, originalSize + 1)
//    }
    
}
