//
//  Offer.swift
//  BDDQuick
//
//  Created by phenix on 26/09/2016.
//  Copyright © 2016 MLH. All rights reserved.
//

import UIKit

/// Given a banana, returns a string that can be used to offer someone the banana.
public func offer(_ banana: Banana) -> String {
    if banana.isEdible {
        return "Hey, want a banana?"
    } else {
        return "Hey, want me to peel this banana for you?"
    }
}
