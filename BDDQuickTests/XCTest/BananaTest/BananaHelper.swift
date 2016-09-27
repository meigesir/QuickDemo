//
//  BananaHelper.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import XCTest
@testable import BDDQuick

internal func createNewPeeledBanana() -> Banana {
    let banana = Banana()
    banana.peel()
    return banana
}
