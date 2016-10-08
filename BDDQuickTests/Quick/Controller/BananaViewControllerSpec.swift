//
//  BananaViewControllerSpec.swift
//  BDDQuick
//
//  https://github.com/Quick/Quick/blob/master/Documentation/en-us/TestingApps.md
//
//  Created by phenix on 30/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import BDDQuick

class BananaViewControllerSpec: QuickSpec {
    
    override func spec() {
        var viewController: BananaViewController!
        
        beforeEach {
            // 1. Instantiate the storyboard. By default, it's name is "Main.storyboard".
            //    You'll need to use a different string here if the name of your storyboard is different.
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            // 2. Use the storyboard to instantiate the view controller.
            viewController = storyboard.instantiateViewController(withIdentifier: "BananaViewControllerID") as! BananaViewController
            
        }
        
        describe("-viewDidLoad") {
            beforeEach {
                // Method #1: Access the view to trigger -[BananaViewController viewDidLoad].
                let _ = viewController.view
            }
            
            it("sets the banana count label to zero", closure: { 
                // Since the label is only initialized when the view is loaded, this
                // would fail if we didn't access the view in the `beforeEach` above.
                expect(viewController.bananaCountLabel.text).to(equal("0"))
            })
        }
        
        describe("the view") {
            beforeEach {
                // Method #2: Triggers .viewDidLoad(), .viewWillAppear(), and .viewDidAppear() events.
                viewController.beginAppearanceTransition(true, animated: false)
                viewController.endAppearanceTransition()
            }
        }
        
        describe(".viewWillDisappear()") {
            beforeEach {
                // Method #3: Directly call the lifecycle event.
                viewController.viewWillDisappear(false)
            }
        }
        
        // MARK: - Triggering UIControl Events Like Button Taps
        
        describe("the 'more bananas' button") {
            beforeEach {
                // Method #1: Access the view to trigger -[BananaViewController viewDidLoad].
                let _ = viewController.view
            }
            
            it("increments the banana count label when tapped", closure: {
                viewController.moreButton.sendActions(for: .touchUpInside)
                expect(viewController.bananaCountLabel.text).to(equal("1"))
            })
        }
        
    }
    
}
