//
//  Service.swift
//  Challange Day 59
//
//  Created by Doğukan Inci on 24.03.2022.
//

import Alamofire
import Foundation

enum CountryEndPoint: String {
    case PATH = "https://restcountries.com/v3.1/all"
    static func pathUrl() -> URL {
        return URL(string: CountryEndPoint.PATH.rawValue)!
    }
}
protocol ICountryService {
    func fetchAllDatas(response: @escaping ([WelcomeElement]?) -> Void)
}

struct CountryService: ICountryService {
    func fetchAllDatas(response: @escaping ([WelcomeElement]?) -> Void) {
        AF.request(CountryEndPoint.pathUrl()).responseDecodable(of: Welcome.self) { (model) in
            guard let data = model.value else {
                response(nil)
                return
            }
            response(data)
        }
    }
    
    
}
