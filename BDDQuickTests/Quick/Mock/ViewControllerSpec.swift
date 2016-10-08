//
//  ViewControllerSpec.swift
//  BDDQuick
//
//  [Writing test with Mock in Swift](https://github.com/Quick/Quick/blob/master/Documentation/en-us/TestUsingTestDoubles.md#mock)
//  Created by phenix on 08/10/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import UIKit
@testable import BDDQuick
import Nimble
import Quick

class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        describe("view Controller") { 
            it("fetch data with data provider", closure: { 
                let mockProvider = MockDataProvider()
                
                let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
                viewController.dataProvider = mockProvider
                
                expect(mockProvider.fetchCalled).to(equal(false))
                
                let _ = viewController.view
                
                expect(mockProvider.fetchCalled).to(equal(true))
                
            })
        }
    }
    
}
