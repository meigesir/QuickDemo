//
//  GorillaDB.swift
//  BDDQuick
//
//  Created by phenix on 30/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import UIKit

public class GorillaDB: NSObject {
    
    var core = [String: AnyObject]()
    
    public var size: Int {
        return core.count
    }
    
    override init() {
        super.init()
        core["test-banana"] = Banana()
    }
    
    public func save(banana: Banana, key: String) {
        core[key] = banana
    }
    
    public func load(key: String) -> Banana {
        return core[key] as! Banana
    }
    
}
