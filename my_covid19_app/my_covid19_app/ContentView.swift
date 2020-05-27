//
//  ContentView.swift
//  my_covid19_app
//
//  Created by 金相恩 on 2020/05/19.
//  Copyright © 2020 Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("\(covidFetch.totalData.confirmed)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
