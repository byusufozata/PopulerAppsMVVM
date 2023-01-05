//
//  BookListViewModel.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import Foundation

protocol AppListViewModelInterface {
    var view: AppListVCInterface? { get set }
    func viewDidLoad()
    
}

final class AppListViewModel {
    
    //MARK: - Veriable
    var apiListModel: ApiList?
    weak var view: AppListVCInterface?
    //MARK: - Api Functions
    func callBookListApi(_ completion: @escaping ((_ modal: ApiList) -> Void)) {
        
        NetworkMenager.inst.loadData { loadData in
            self.apiListModel = loadData
            completion(loadData)
            print(self.apiListModel)
        }
    }

}

extension AppListViewModel: AppListViewModelInterface {
    
    func viewDidLoad() {
        view?.prepareTableView()
    }
    
    
}
