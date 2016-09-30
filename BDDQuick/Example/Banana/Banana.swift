//
//  Banana.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import Foundation

/// A delicious banana. Tastes better if you peel it first.
open class Banana: NSObject{
    fileprivate var isPeeled = false
    
    /// Peels the banana.
    open func peel() {
        isPeeled = true
    }
    
    /// You shouldn't eat a banana unless it's been peeled.
    open var isEdible: Bool {
        return isPeeled
    }
}
