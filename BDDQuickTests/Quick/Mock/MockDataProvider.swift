//
//  MockDataProvider.swift
//  BDDQuick
//
//  Created by phenix on 08/10/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import UIKit
@testable import BDDQuick

class MockDataProvider: NSObject, DataProviderProtocol {
    
    var fetchCalled = false
    func fetch(callback: @escaping (String) -> Void) {
        fetchCalled = true
        callback("foobar")
    }
    
}
