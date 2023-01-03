//
//  NetworkMenager.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import Foundation

class NetworkMenager {
    
    //MARK: - Veriable
    
    static var inst = NetworkMenager()
    
    //MARK: - Init
    
    private init() {  }
    
    //MARK: - Api
    
    func appListApi(completion: @escaping ([ApiList]) -> Void) {
        let baseURL = "https://rss.applemarketingtools.com/api/v2/us/apps//10/albums.json"
        let url = URL(string: baseURL)!
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: url) { data, response, error in
            let jsonDecoder = JSONDecoder()
            if let data = data {
                if let responseString = try? jsonDecoder.decode([ApiList].self, from: data) {
                    let results = responseString
                    completion(results)
                    print(results)
                }
            }
        }
        dataTask.resume()
    }

}
