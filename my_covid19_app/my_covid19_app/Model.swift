//
//  Model.swift
//  my_covid19_app
//
//  Created by 金相恩 on 2020/05/24.
//  Copyright © 2020 Kim. All rights reserved.
//

import Foundation

struct TotalData {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let lastChange = Date()
    let lastUpdate = Date()
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoverdRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}

struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let lastChange = Date()
    let lastUpdate = Date()
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoverdRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}
