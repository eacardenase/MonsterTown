//
//  Logged.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

@propertyWrapper struct Logged<T> where T: CustomStringConvertible {
    private var storage: T
//    private var warningValue: Int
    
    var wrappedValue: T {
        set {
            print("Old value: \(storage). New value: \(newValue)")
            
            storage = newValue
            
//            if storage < warningValue {
//                print("\(newValue) is getting too low.")
//            }
        }
        get {
            return storage
        }
    }
    
    init(wrappedValue: T, /*warningValue: Int*/) {
        storage = wrappedValue
//        self.warningValue = warningValue
    }
}
