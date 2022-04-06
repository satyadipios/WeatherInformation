//
//  WeatherResponse.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 9/3/20.
//  Copyright © 2020 Satyadip Singha. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String 
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
