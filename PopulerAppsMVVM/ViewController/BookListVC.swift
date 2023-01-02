//
//  ViewController.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

import UIKit

class BookListVC: UIViewController {
    
    //MARK: - Outlet
    
    @IBOutlet weak var tableViewBooks: UITableView!
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

//MARK: - UITableViewDelegate

extension BookListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}

//MARK: - UITableViewDataSource

extension BookListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
