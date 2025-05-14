//
//  Logged.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

@propertyWrapper struct Logged {
    private var storage: Int
    private var warningValue: Int
    
    var wrappedValue: Int {
        set {
            print("Old value: \(storage). New value: \(newValue)")
            
            storage = newValue
            
            if storage < warningValue {
                print("\(newValue) is getting too low.")
            }
        }
        get {
            return storage
        }
    }
    
    init(wrappedValue: Int, warningValue: Int) {
        storage = wrappedValue
        self.warningValue = warningValue
    }
}
