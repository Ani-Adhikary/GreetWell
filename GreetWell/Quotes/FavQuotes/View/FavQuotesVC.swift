//
//  FavQuotesVC.swift
//  GreetWell
//
//  Created by Ani Adhikary on 19/08/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class FavQuotesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
       
    var quotes = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quotes = QuotesResponse.getQuotes(quoteType: QuoteType.valentinesDay)
        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        //navigationController?.topViewController?.title = QuotesResponse.getIndividualQuotesPageTitle(quoteType: quoteTypeFromHome.listType)
        navigationController?.topViewController?.title = "Your fav quotes"
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.hidesBackButton = false
        navigationController?.isNavigationBarHidden = false
    }

    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(QuoteCell.nib, forCellReuseIdentifier: QuoteCell.identifier)
        tableView.separatorStyle = .singleLine
        tableView.tableFooterView = UIView()
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.layoutMargins = UIEdgeInsets.zero
        tableView.sectionHeaderHeight = 0
        
        tableView.estimatedRowHeight = 60.0
        tableView.rowHeight = UITableView.automaticDimension
    }
}

extension FavQuotesVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let quoteCell = tableView.dequeueReusableCell(withIdentifier: QuoteCell.identifier, for: indexPath) as! QuoteCell
        let quote = quotes[indexPath.row]
        quoteCell.setupData(quote: quote)
        return quoteCell
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let quotesDetailVC = QuotesDetailVC(nibName: "QuotesDetailVC", bundle: nil)
        quotesDetailVC.quoteTypeFromHome = QuoteType.valentinesDay
        navigationController?.pushViewController(quotesDetailVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
