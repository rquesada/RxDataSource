//
//  SimpleViewModel.swift
//  RxDataSource
//
//  Created by Roy Quesada on 3/17/20.
//  Copyright © 2020 Roy Quesada. All rights reserved.
//

import RxSwift

struct SimpleViewModel {
    var items = Observable<[String]>.of(["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
)
}
