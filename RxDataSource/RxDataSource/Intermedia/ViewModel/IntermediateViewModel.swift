//
//  IntermediateViewModel.swift
//  RxDataSource
//
//  Created by Roy Quesada on 3/17/20.
//  Copyright © 2020 Roy Quesada. All rights reserved.
//

import RxSwift

struct IntermediateViewModel {
    var items = BehaviorSubject<[TableViewSection]>(value: [
        TableViewSection(items: [
            TableViewItem(title: "One"),
            TableViewItem(title: "Two"),
            TableViewItem(title: "Three"),
            TableViewItem(title: "Four"),
            TableViewItem(title: "Five"),
            TableViewItem(title: "Six")
            ], header: "First Section"),
        TableViewSection(items: [
            TableViewItem(title: "Seven"),
            TableViewItem(title: "Eight"),
            TableViewItem(title: "Nine"),
            TableViewItem(title: "Ten"),
            TableViewItem(title: "Eleven"),
        ], header: "Second Section")
    ])
    
    let dataSource = IntermediateDataSource.dataSource()
}
