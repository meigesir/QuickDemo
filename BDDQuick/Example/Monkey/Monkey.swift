//
//  Monkey.swift
//  BDDQuick
//
//  Created by phenix on 27/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import Foundation

public enum MonkeyIntelligent {
    
    case extremelySilly
    case notSilly
    case verySilly
}

open class Monkey: NSObject {
    
    var name      : String?
    var silliness : MonkeyIntelligent?
    
    public required init(name: String, silliness: MonkeyIntelligent) {
        self.name      = name
        self.silliness = silliness
    }
}
