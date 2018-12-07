//
//  DefaultsKey.swift
//  MSAUserDefaults
//
//  Created by Mehmet Salih Aslan on 6.12.2018.
//

import Foundation

public class DefaultsKey {
    
    let key: String!
    
    
    public init(_ key: String) {
        self.key = key
    }
    
    /// Removes a value using 'key'
    public func remove() {
        Defaults.removeObject(forKey: key)
        Defaults.synchronize()
    }
    
    /// Returns `true` if `key` exists
    public var has: Bool {
        return Defaults.object(forKey: key) != nil
    }
    
}
