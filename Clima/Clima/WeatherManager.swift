//
//  WeatherManager.swift
//  Clima
//
//  Created by Issei  on 2020/06/05.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager{
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=8a13835c75b6ab9be91aefb4059418e2"
    func fetchWeather(cityName:String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        //1. create URL
        if let url = URL(string: urlString){//if URL is not null
            //2. create URLSession
            let session = URLSession(configuration: .default)
            //3. give the session a task
            /*let task = session.dataTask(with: url) { (data, response, error) in
                <#code#>
            }*/
            //4. start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response:URLResponse?, error:Error?){
        if error != nil{
            print(error!)
            return
        }
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
    }
}
