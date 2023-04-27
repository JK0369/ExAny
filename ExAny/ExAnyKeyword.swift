//
//  ExAnyKeyword.swift
//  ExAny
//
//  Created by 김종권 on 2023/04/27.
//

import Foundation

// any 키워드 설명
protocol ABC {
    associatedtype MyType
}

// 기존 - 제네릭 선언해야함
func printValue<T: ABC>(type: T) {
    print(type)
}

// any 키워드 사용 - 제네릭을 따로 선언해주지 않아도 됨
func printValue2(type: any ABC) {
    print(type)
}
