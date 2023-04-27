//
//  ViewController.swift
//  ExAny
//
//  Created by 김종권 on 2023/04/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView()
        let dataSource = MyDataSource(tableView: tableView) { tableView, indexPath, itemIdentifier in
            switch itemIdentifier {
            case let .item(item):
                print(item.value)
            }
            return UITableViewCell()
        }
    }
}
