//
//  Country.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import Foundation

struct Country: Codable, Identifiable {
    let id = UUID()
    
    let country: String
    let cases: Int
    let todayCases: Int
    let deaths: Int
    let todayDeaths: Int
    let recovered: Int
    let active: Int
    let critical: Int
    let casesPerOneMillion: Int
    let deathsPerOneMillion: Int
    let totalTests: Int
    let testsPerOneMillion: Int
    
    static var dummyData: [Country] {
        return [Country(country: "USA", cases: 0, todayCases: 0, deaths: 0, todayDeaths: 0, recovered: 0, active: 0, critical: 0, casesPerOneMillion: 0, deathsPerOneMillion: 0, totalTests: 0, testsPerOneMillion: 0)]
    }
}
