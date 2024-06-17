//
//  Weather.swift
//  WeatherAppWithUIKit
//
//  Created by 조다은 on 6/17/24.
//

import Foundation

struct WeatherRoot: Codable {
    let cod: String
    let list: [Weather]
}

struct Weather: Codable {
    let dt: Int
    let main: WeatherMain
    let dtTxt: String
    
    enum CodingKeys: String, CodingKey {
        case dtTxt = "dt_txt"
        case dt, main
    }
}

struct WeatherMain: Codable {
    let temp: Double
    let tempMin: Double
    let tempMax: Double
    
    enum CodingKeys: String, CodingKey {
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case temp
    }
}
