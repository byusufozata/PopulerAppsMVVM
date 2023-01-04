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
    func loadData(completion: @escaping (ApiList) -> Void) {
        guard let url = URL(string: "https://rss.applemarketingtools.com/api/v2/us/podcasts/top/25/podcasts.json") else  {return}
                
                URLSession.shared.dataTask(with: url) { ( data, response, error) in
                    if let error = error {
                        print("Something went wrong the request: \(error.localizedDescription)")
                        return
                    }
                    
                    guard let data = data else {
                        print("No data found")
                        return
                    }
                    
                    guard let result = String(data: data, encoding: .utf8) else { return }

                    do {
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(ApiList.self, from: data)
                        completion(result)
                        print(result)
                    } catch let error {
                        print("Cannot conver the response to the required objects: \(error.localizedDescription)")
                        
                    }
                }.resume()
    }
    
}
