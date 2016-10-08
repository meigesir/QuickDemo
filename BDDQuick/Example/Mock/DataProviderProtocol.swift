//
//  DataProviderProtocol.swift
//  BDDQuick
//
//  Created by phenix on 08/10/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import Foundation

protocol DataProviderProtocol: class {
    func fetch(callback: @escaping (_ data: String) -> Void)
}
