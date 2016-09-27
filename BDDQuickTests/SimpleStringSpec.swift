//
//  SimpleStringSpec.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import Foundation
import Quick
import Nimble

class SimpleStringSpec: QuickSpec {
    
    override func spec() {
        
        describe("SimpleString") { 
            let greeting = "Hello world"
            it("should exist", closure: { 
                expect(greeting).notTo(beNil())
            })
            
            it("should equal to 'Hello world'", closure: { 
                expect(greeting).to(equal("Hello world"))
            })
        }
        
    }
    
}
