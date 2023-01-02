//
//  BookListViewModel.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import UIKit

class BookListViewModel {
    
    //MARK: - Api Functions
    func callBookListApi() {
        
        NetworkMenager.inst.bookListApi()
    }

}
