//
//  MyDataSource.swift
//  ExAny
//
//  Created by 김종권 on 2023/04/27.
//

import UIKit

enum MyItemableWrapper: Hashable {
    case item(any MyItemable)
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case let .item(item):
            hasher.combine(item.id)
        }
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.item(lhsItem), .item(rhsItem)):
            return lhsItem.id == rhsItem.id
        }
    }
}

final class MyDataSource: UITableViewDiffableDataSource<Int, MyItemableWrapper> {
}
