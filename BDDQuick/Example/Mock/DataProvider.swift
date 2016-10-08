//
//  DataProvider.swift
//  BDDQuick
//
//  Created by phenix on 08/10/2016.
//  Copyright © 2016 MT. All rights reserved.
//

import UIKit

class DataProvider: NSObject, DataProviderProtocol {
    
    func fetch(callback: @escaping (String) -> Void) {
        let url = URL(string: "https://www.google.com")!
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: url) { (data, resp, err) in
            let string = String(data: data!, encoding: String.Encoding.utf8)!
            callback(string)
        }
        
        task.resume()

    }

}
