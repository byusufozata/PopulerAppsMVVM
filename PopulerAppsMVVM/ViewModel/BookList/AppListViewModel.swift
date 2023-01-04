//
//  BookListViewModel.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import UIKit

class AppListViewModel {
    
    //MARK: - Veriable
    var apiListModel: ApiList?
    
    //MARK: - Api Functions
    func callBookListApi(_ completion: @escaping ((_ modal: ApiList) -> Void)) {
        
        NetworkMenager.inst.loadData { loadData in
            self.apiListModel = loadData
            
            completion(loadData)
            print(self.apiListModel)
        
        }
    }

}
