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
    
    func appListApi() {
        
        let appListApi = "https://rss.applemarketingtools.com/api/v2/us/apps/top-free/10/apps.json"
        if let url = URL(string: appListApi) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                
                
            }
            task.resume()
        }
        
    }
        
  
}
