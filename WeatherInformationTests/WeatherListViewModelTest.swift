//
//  WeatherListViewModelTest.swift
//  WeatherInformationTests
//
//  Created by Satyadip Singha on 06/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import XCTest
@testable import WeatherInformation


class WeatherListViewModelTest: XCTestCase {

    private var weatherListVM: WeatherListViewModel!

    override func setUp() {
        super.setUp()
        self.weatherListVM = WeatherListViewModel()
    }
    
    func test_should_be_able_to_convert_to_celsius_successfully() {
        let celsiusTemperatures = [0,22.2222]
        self.weatherListVM.updateUnit(to: .celsius)
        
        for (index, vm) in self.weatherListVM.weatherViewModels.enumerated() {
            XCTAssertEqual(round(vm.temperature), round(celsiusTemperatures[index]))
        }
    }
    
    func test_should_be_able_to_convert_to_fahrenheit_successfully() {
        let farenheitTemperatures = [0,-40.0000]
        self.weatherListVM.updateUnit(to: .fahrenheit)
        
        for (index, vm) in self.weatherListVM.weatherViewModels.enumerated() {
            XCTAssertEqual(round(vm.temperature), round(farenheitTemperatures[index]))
        }
    }
    
}
