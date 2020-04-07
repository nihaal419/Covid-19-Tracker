//
//  GlobalView.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import SwiftUI

struct GlobalView: View {
    
    let API = AppAPIInteraction()
    @State fileprivate var globalData: Global = Global.dummyData
    
    var body: some View {
        VStack {
            if globalData.cases == 0 {
                Text("Loading...")
                    .font(.system(size: 35, weight: .semibold, design: .default))
            }
            else {
                Spacer()
                
                Text("Total Cases")
                    .font(.system(size: 50, weight: .bold, design: .default))
                Text("\(globalData.cases)")
                    .font(.system(size: 35, weight: .semibold, design: .default))
                
                Spacer()
                
                Text("Total Deaths")
                    .font(.system(size: 50, weight: .bold, design: .default))
                Text("\(globalData.deaths)")
                    .font(.system(size: 35, weight: .semibold, design: .default))
                    .foregroundColor(.red)
                
                Spacer()
                
                Text("Total Recovered")
                    .font(.system(size: 50, weight: .bold, design: .default))
                Text("\(globalData.recovered)")
                    .font(.system(size: 35, weight: .semibold, design: .default))
                    .foregroundColor(.green)
                
                Spacer()
            }
        }.onAppear(perform: fetchGlobalData)
    }
    
    func fetchGlobalData() {
        API.fetchGlobalCounts { global in
            self.globalData = global
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalView()
    }
}
