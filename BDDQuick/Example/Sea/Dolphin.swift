//
//  Dolphin.swift
//  BDDQuick
//
//  Created by phenix on 28/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import Foundation

public class Dolphin: NSObject {
    
    var isFriendly = true
    var isSmart = true
    var instanceClick = Click()
    
    func click() -> Click {
        instanceClick.isLoud = true
        instanceClick.hasHighFrequency = true
        return instanceClick
    }
    
}
