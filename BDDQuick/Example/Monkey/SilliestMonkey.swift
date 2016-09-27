//
//  SilliestMonkey.swift
//  BDDQuick
//
//  Created by phenix on 27/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import Foundation

public func silliest(_ monkeys: [Monkey]) -> [Monkey] {
    return monkeys.filter { $0.silliness == .verySilly }
}
