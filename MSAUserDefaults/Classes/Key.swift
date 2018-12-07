//
//  Key.swift
//  MSAUserDefaults
//
//  Created by Mehmet Salih Aslan on 6.12.2018.
//

import Foundation

public class Key<ValueType>: DefaultsKey {
    
    public var value: ValueType? {
        set {
            /// Saves a 'value' using 'key'
            Defaults.set(newValue, forKey: key)
            Defaults.synchronize()
        }
        get {
            /// Creates a 'value' using 'key'
            return Defaults.object(forKey: key) as? ValueType
        }
    }
    
}
