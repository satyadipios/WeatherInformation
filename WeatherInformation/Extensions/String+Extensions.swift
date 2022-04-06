//
//  String+Extensions.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 3/3/21.
//  Copyright © 2021 Satyadip Singha. All rights reserved.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
