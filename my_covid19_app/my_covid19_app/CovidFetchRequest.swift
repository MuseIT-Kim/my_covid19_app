//
//  CovidFetchRequest.swift
//  my_covid19_app
//
//  Created by 金相恩 on 2020/05/19.
//  Copyright © 2020 Kim. All rights reserved.
//
import Alamofire
import SwiftyJSON
import Foundation

class CovidFetchRequest : ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    
    init(){
        
        getCurrentTotal()
        
    }
    
    func getCurrentTotal(){
        
        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"
        ]
        
        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=undefined", headers:
            headers).responseJSON { response in

                let result = response.data
                
                if result != nil {
                    
                    let json = JSON(result!)
                    print(json)
                    
                    let confirmed = json[0]["confirmed"].intValue
                    let deaths = json[0]["deaths"].intValue
                    let recovered = json[0]["recovered"].intValue
                    let critical = json[0]["critical"].intValue
                    
                    self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
                } else {
                    self.totalData = testTotalData
                }
            }
        
    }
}
