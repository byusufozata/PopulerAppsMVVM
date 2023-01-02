//
//  BookListViewModel.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import UIKit

class AppListViewModel {
    
    //MARK: - Api Functions
    func callBookListApi() {
        
        NetworkMenager.inst.appListApi()
    }

}
