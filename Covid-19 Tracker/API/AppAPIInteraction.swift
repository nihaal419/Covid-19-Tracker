//
//  AppAPIInteraction.swift
//  Covid-19 Tracker
//
//  Created by Nihaal Manesia on 4/1/20.
//  Copyright © 2020 Rebytalized. All rights reserved.
//

import Foundation

class AppAPIInteraction {
    private let baseAPIURL = "https://coronavirus-19-api.herokuapp.com"
    
    func fetchGlobalCounts(then completion: @escaping (Global) -> ()) {
        let url = URL(string: "\(baseAPIURL)/all")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching global data: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                print("Unexpected status code")
                return
            }
            
            if let data = data,
                let globalData = try? JSONDecoder().decode(Global.self, from: data) {
                completion(globalData)
            }
        }
        
        task.resume()
    }
    
    func fetchCountries(then completion: @escaping ([Country]) -> ()) {
        let url = URL(string: "\(baseAPIURL)/countries")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching countries data: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                print("Unexpected status code")
                return
            }
            
            if let data = data,
                let countryData = try? JSONDecoder().decode([Country].self, from: data) {
                completion(countryData)
            }
        }
        
        task.resume()
    }
}
