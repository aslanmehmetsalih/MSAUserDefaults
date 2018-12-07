//
//  MSAUserDefaults.swift
//  MSAUserDefaults
//
//  Created by Mehmet Salih Aslan on 4.12.2018.
//

import Foundation

public let Defaults = UserDefaults.standard

public extension UserDefaults {
    
    /// Removes a values using 'keys'
    func remove(_ keys: [DefaultsKey]) {
        for key in keys {
            removeObject(forKey: key.key)
            
        }
        synchronize()
    }
    
    /// Removes all values from user defaults
    func removeAll() {
        for (key, _) in dictionaryRepresentation() {
            removeObject(forKey: key)
        }
        synchronize()
    }
    
}
