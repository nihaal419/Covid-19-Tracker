//
//  CountryCell.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import SwiftUI

struct CountryCell: View {
    let country: Country
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(country.country)
                .font(.system(size: 27, weight: .bold, design: .default))
            Text("Cases: \(country.cases) | Today: \(country.todayCases) | Active: \(country.active)")
                .font(.system(size: 16, weight: .regular, design: .default))
            Text("Deaths: \(country.deaths) | Today: \(country.todayDeaths)")
                .font(.system(size: 16, weight: .regular, design: .default))
            Text("Recovered: \(country.recovered) | Critical: \(country.critical)")
                .font(.system(size: 16, weight: .regular, design: .default))
            Text("Total tests: \(country.totalTests)")
                .font(.system(size: 16, weight: .regular, design: .default))
        }
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: Country.dummyData[0])
    }
}
