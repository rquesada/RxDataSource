//
//  FirstViewController.swift
//  RxDataSource
//
//  Created by Roy Quesada on 3/17/20.
//  Copyright © 2020 Roy Quesada. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

class FirstViewController: UIViewController {

    // MARK: - Properties
    private let disposeBag = DisposeBag()
    private var viewModel = SimpleViewModel()
    private var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: "SimpleTableViewCell")
        tableView.tableFooterView = UIView()
        setupUI()
        bindTableView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        applyConstraints()
        title = "Simple"
    }
}

extension FirstViewController{
    func bindTableView(){
        viewModel.items.bind(to: tableView.rx.items(cellIdentifier: "SimpleTableViewCell")){ indexPath, title, cell in
            cell.textLabel?.text = title
        }
    .disposed(by: disposeBag)
    }
}

extension FirstViewController{
    private func setupUI(){
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        self.view.backgroundColor = .white
        self.view.addSubview(tableView)
    }
    
    private func applyConstraints(){
        tableView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
    }
}

