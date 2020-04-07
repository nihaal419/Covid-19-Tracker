//
//  Global.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import Foundation

struct Global: Codable {
    let cases: Int
    let deaths: Int
    let recovered: Int
    
    static var dummyData: Global {
        return Global(cases: 0, deaths: 0, recovered: 0)
    }
}
