//
//  AsynchronousSpec.swift
//  BDDQuick
//
//  [Asynchronous Expectations](https://github.com/Quick/Nimble#asynchronous-expectations)
//
//  Created by phenix on 09/10/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import UIKit
import Nimble
import Quick

class AsynchronousSpec: QuickSpec {
    
    override func spec() {
        
        var ocean: [String]!
        
        beforeEach {
            ocean = []
        }
        
        it("Asynchronous Expectations") { 
            
            DispatchQueue.main.async {
                ocean.append("dolphins")
                ocean.append("whales")
            }
            
            expect(ocean).toEventually(contain("dolphins", "whales"), timeout: 3)
            
        }
    }
    
}
