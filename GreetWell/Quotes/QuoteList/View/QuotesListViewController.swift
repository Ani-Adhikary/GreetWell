//
//  QuotesListViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 17/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class QuotesListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var greetingList = [QuoteList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingList = GreetingListResponse.getList()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
        setupTableView()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.topViewController?.title = "Greetings Quotes"
        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
        navigationController?.topViewController?.navigationItem.searchController = nil
    }
    

    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(QuoteListCell.nib, forCellReuseIdentifier: QuoteListCell.identifier)
        tableView.separatorStyle = .singleLine
        tableView.tableFooterView = UIView()
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.layoutMargins = UIEdgeInsets.zero
        tableView.sectionHeaderHeight = 0
        
        tableView.estimatedRowHeight = 60.0
        tableView.rowHeight = UITableView.automaticDimension
        //tableView.reloadData()
    }
    
}

extension QuotesListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return greetingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let quoteCell = tableView.dequeueReusableCell(withIdentifier: QuoteListCell.identifier, for: indexPath) as! QuoteListCell
        let list = greetingList[indexPath.row]
        quoteCell.setupData(quoteList: list)
        return quoteCell
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let individualQuotesHomeVC = IndividualQuotesHomeVC(nibName: "IndividualQuotesHomeVC", bundle: nil)
//        //favDetailVC.quote = quote
//        navigationController?.pushViewController(individualQuotesHomeVC, animated: true)
//        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
