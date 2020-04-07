//
//  CountriesView.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import SwiftUI

struct CountriesView: View {
    
    let API = AppAPIInteraction()
    @State fileprivate var countriesData: [Country] = Country.dummyData
    
    var body: some View {
        VStack {
            if countriesData.count == 1 {
                Text("Loading...")
                    .font(.system(size: 35, weight: .semibold, design: .default))
            } else {
                List(countriesData) { country in
                    CountryCell(country: country)
                }
            }
        }.onAppear(perform: fetchCountriesData)
    }
    
    func fetchCountriesData() {
        API.fetchCountries { countries in
            self.countriesData = countries
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}
