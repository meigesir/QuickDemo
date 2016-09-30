//
//  DolphinCove.swift
//  BDDQuick
//
//  Created by phenix on 30/09/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import Foundation

public class DolphinCove {
    
    var ship: SunkenShip?
    
    public func add (ship: SunkenShip) {
        self.ship = ship
    }
    
    public func add (dolphin: Dolphin) {
        
        if self.ship != nil {
            dolphin.click().count = 3
        }
        
    }
    
}
