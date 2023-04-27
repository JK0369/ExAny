//
//  MyItem.swift
//  ExAny
//
//  Created by 김종권 on 2023/04/27.
//

import Foundation

protocol MyItemable: Hashable {
    var id: UUID { get }
    var value: Int { get }
}

struct MyItem: MyItemable {
    let id = UUID()
    let value: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MyItem, rhs: MyItem) -> Bool {
        return lhs.id == rhs.id
    }
}
