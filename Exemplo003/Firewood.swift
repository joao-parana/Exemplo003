//
//  Firewood.swift
//  Exemplo003
//
//  Created by Joao Ferreira on 9/30/14.
//  Copyright (c) 2014 si. All rights reserved.
//

import Foundation

public class Firewood {
    
    public var charred: Bool
    public init()  {
        println("initializing our firewood ( counter = \(COUNTERS.firewoodCouter) )")
        COUNTERS.incFirewood()
        charred = false
    }
    public func burn() {
        charred = true
    }
}

struct COUNTERS {
    static var firewoodCouter = 1;
    static func incFirewood() {
        COUNTERS.firewoodCouter++
    }
}
