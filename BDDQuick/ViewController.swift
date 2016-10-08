//
//  ViewController.swift
//  BDDQuick
//
//  Created by phenix on 9/9/16.
//  Copyright © 2016 MLH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    var dataProvider: DataProviderProtocol?
    
    // MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dataProvider = dataProvider ?? DataProvider()
        
        dataProvider?.fetch(callback: { (data) in
            print(data)
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

