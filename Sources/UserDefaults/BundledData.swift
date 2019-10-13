//
//  BundledData.swift
//  
//
//  Created by Michael Salmon on 2019-10-08.
//

import Foundation

// swiftlint:disable force_cast


/// Fetch a value from the app's bundle
/// - Parameter key: key to bundle store
///
public func bundledData(key: String) -> String? {
    guard let object = Bundle.main.object(forInfoDictionaryKey: key) else { return nil }
    if object is String { return object as? String }
    if object is Int { return String(object as! Int) }

    return nil
}

/// return a list of the keys contained in the bundle
public func bundleKeys() -> [String]? {
    let info = Bundle.main.infoDictionary
    let list = info?.keys.sorted()

    return list
}
