//
//  QuotesListViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 17/07/20.
//  Copyright © 2022 Ani Adhikary. All rights reserved.
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
        
        //right menu
        let rightMenuIcon = UIBarButtonItem(image: UIImage(named: "Menu"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(showMenu))
        navigationController?.topViewController?.navigationItem.rightBarButtonItem = rightMenuIcon
        rightMenuIcon.tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
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
    
    @objc func showMenu(_ sender: UIButton) {
        
        // create an actionSheet
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // create an action
        let readAsListAction: UIAlertAction = UIAlertAction(title: "Read as list", style: .default) { action -> Void in
            print("Read as list Action pressed")
            BusinessLogic.businessLogic.dataVault.setReadAsList(value: true)
        }
        
        let readAsSlideAction: UIAlertAction = UIAlertAction(title: "Read as slide", style: .default) { action -> Void in
            
            print("Read as slide Action pressed")
            BusinessLogic.businessLogic.dataVault.setReadAsList(value: false)
        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
        
        // add actions
        actionSheetController.addAction(readAsListAction)
        actionSheetController.addAction(readAsSlideAction)
        actionSheetController.addAction(cancelAction)
        
        if DeviceEnv.isIpad {
            actionSheetController.popoverPresentationController?.sourceView = self.view
            actionSheetController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection()
            actionSheetController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
        self.present(actionSheetController, animated: true, completion: nil)
        
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
        
        if BusinessLogic.businessLogic.dataVault.isReadAsList() {
            let individualQuotesHomeVC = IndividualQuotesHomeVC(nibName: "IndividualQuotesHomeVC", bundle: nil)
            individualQuotesHomeVC.quoteTypeFromHome = greetingList[indexPath.row].listType
            navigationController?.pushViewController(individualQuotesHomeVC, animated: true)
        } else {
            let quotesDetailVC = QuotesDetailVC(nibName: "QuotesDetailVC", bundle: nil)
            quotesDetailVC.quoteTypeFromHome = greetingList[indexPath.row].listType
            navigationController?.pushViewController(quotesDetailVC, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
