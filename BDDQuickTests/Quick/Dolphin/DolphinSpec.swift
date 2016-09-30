//
//  DolphinSpec.swift
//  BDDQuick
//  https://github.com/Quick/Quick/blob/master/Documentation/en-us/QuickExamplesAndGroups.md
//
//  Created by phenix on 28/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import XCTest
import Nimble
import Quick
@testable import BDDQuick

class DolphinSpec: QuickSpec {
    
    // MARK: - Specifying Conditional Behavior Using context
    
    override func spec() {
        
        describe("a dolphin") {
            
            var dolphin: Dolphin!
            beforeEach { dolphin = Dolphin() }
            
            describe("its click", {
                context("when the dolphin is not near anything interesting", closure: { 
                    it("is only emitted once", closure: { 
                        expect(dolphin!.click().count).to(equal(1))
                    })
                })
                
                context("when the dolphin is near something interesting", { 
                    beforeEach {
                        let ship = SunkenShip()
                        Jamaica.dolphinCove.add(ship: ship)
                        Jamaica.dolphinCove.add(dolphin: dolphin)
                    }
                    
                    it("is emitted three times", closure: { 
                        expect(dolphin.click().count).to(equal(3))
                    })
                })
            })
            
            afterEach { dolphin = nil }
        }
        
    }
    
    
    // MARK: - Sharing Setup/Teardown Code Using beforeEach and afterEach
    
//    override func spec() {
//        
//        describe("a dolphin") {
//            
//            var dolphin: Dolphin!
//            beforeEach {
//                dolphin = Dolphin()
//            }
//            
//            describe("its click", {
//                var click: Click!
//                beforeEach {
//                    click = dolphin.click()
//                }
//                
//                it("is loud", closure: {
//                    expect(click.isLoud).to(beTruthy())
//                })
//                
//                it("has a high frequency", closure: {
//                    expect(click.hasHighFrequency).to(beTruthy())
//                })
//                
//                afterEach {
//                    click = nil
//                }
//            })
//            
//            afterEach {
//                dolphin = nil
//            }
//        }
//        
//    }
    
    
    // MARK: - Describing Classes and Methods Using describe
    
//    override func spec() {
//        
//        describe("a dolphin") { 
//            describe("its click", { 
//                it("is loud", closure: { 
//                    let click = Dolphin().click()
//                    expect(click.isLoud).to(beTruthy())
//                })
//                
//                it("has a high frequency", closure: { 
//                    let click = Dolphin().click()
//                    expect(click.hasHighFrequency).to(beTruthy())
//                })
//            })
//        }
//    }
    
    
    
    
    
    // MARK: - Examples Using it
    
//    override func spec() {
//        it("is friendly") {
//            expect(Dolphin().isFriendly).to(beTruthy())
//        }
//        
//        it("is smart") { 
//            expect(Dolphin().isSmart).to(beTruthy())
//        }
//    }
    
}
