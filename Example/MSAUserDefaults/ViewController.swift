//
//  ViewController.swift
//  MSAUserDefaults
//
//  Created by aslanmehmetsalih on 12/04/2018.
//  Copyright (c) 2018 aslanmehmetsalih. All rights reserved.
//

import UIKit
import MSAUserDefaults

extension DefaultsKey {
    static let firstStart = Key<Bool>("firstStart")
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = DefaultsKey.firstStart.value {
            label.text = "app was launched earlier"
        } else {
            DefaultsKey.firstStart.value = true
            label.text = "first time app launch"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

