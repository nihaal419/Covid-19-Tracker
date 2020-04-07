//
//  AppView.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            GlobalView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Global")
                }
            CountriesView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Countries")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
