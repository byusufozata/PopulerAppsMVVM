//
//  ViewController.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import UIKit

class AppListVC: UIViewController {
    
    //MARK: - Outlet
    
    @IBOutlet weak var tableViewApps: UITableView!
    //MARK: - Veriable
    
    var bookListViewModel: AppListViewModel = AppListViewModel()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookListViewModel.callBookListApi { modal in
            print(modal)
        }
        tableViewApps.register(UINib(nibName: "AppDetailCellTableViewCell", bundle: nil), forCellReuseIdentifier: "AppDetailCellTableViewCell")

    }
}

//MARK: - UITableViewDelegate

extension AppListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}

//MARK: - UITableViewDataSource

extension AppListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AppDetailCellTableViewCell") as? AppDetailCellTableViewCell else {
            fatalError("cell is not dequed correctly ")
        }
        return cell
    }
}
