//
//  UserDefaults.swift
//  
//
//  Created by Michael Salmon on 2019-10-08.
//

import Foundation

/**
UserDefaulty property wrapper

 Map varaible to UserDefaults

 */

@propertyWrapper
public struct UserDefault<T> {
    let key: String
    let defaultValue: T

    public init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
