//
//  CountryViewModel.swift
//  Challange Day 59
//
//  Created by Doğukan Inci on 24.03.2022.
//

import Foundation

protocol ICountryViewModel {
    func fetchItems()
    func changeLoading()
    
    var countries: [WelcomeElement] { get set }
    var countryService: ICountryService { get }
    
    func setDelegate(output: CountryOutput)
}

final class CountryViewModel: ICountryViewModel {
    
    var countryOutput: CountryOutput?
    
    func setDelegate(output: CountryOutput) {
        countryOutput = output
    }
    
    var countries: [WelcomeElement] = []
    private var isLoading = false
    let countryService: ICountryService
    
    init() {
        countryService = CountryService()
    }
    func fetchItems() {
        changeLoading()
        DispatchQueue.main.async {
            self.countryService.fetchAllDatas { [weak self] (response) in
                self?.changeLoading()
                self?.countries = response ?? []
                self?.countryOutput?.saveDatas(values: self?.countries ?? [])
            }
        }
    }
    func changeLoading() {
        isLoading = !isLoading
        countryOutput?.changeLoading(isLoad: isLoading)
    }
    
    
}

