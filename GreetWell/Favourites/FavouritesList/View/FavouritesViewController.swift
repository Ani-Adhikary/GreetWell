//
//  FavouritesViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 02/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class FavouritesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let favouritesList = ["Greetings", "Quotes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
        setupTableView()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.topViewController?.title = "Your Favourites"
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

extension FavouritesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouritesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let favCell = tableView.dequeueReusableCell(withIdentifier: QuoteListCell.identifier, for: indexPath) as! QuoteListCell
        let fav = favouritesList[indexPath.row]
        favCell.setupFavs(fav: fav)
        return favCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let quotesDetailVC = QuotesDetailVC(nibName: "QuotesDetailVC", bundle: nil)
            navigationController?.pushViewController(quotesDetailVC, animated: true)
        case 1:
            let quotesDetailVC = QuotesDetailVC(nibName: "QuotesDetailVC", bundle: nil)
            navigationController?.pushViewController(quotesDetailVC, animated: true)
        default:
            print("Not found")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
