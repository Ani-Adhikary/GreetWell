//
//  HomeViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 02/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var greetings = [Greeting]()
    let searchController = UISearchController(searchResultsController: nil)
    var filteredGreetings = [Greeting]()
    
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetings = HomeGreetingResponse.getGreetings(greetType: .home, greetingPageCategory: GreetingPageCategory.homePage)
        setupCollectionView()
        setupCollectionViewItemSize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
        setupSearchController()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.topViewController?.title = "Home"
        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(HomeCell.nib, forCellWithReuseIdentifier: HomeCell.identifier)        
    }
    
    private func setupCollectionViewItemSize() {
        let customLayout = CustomLayout()
        customLayout.delegate = self
        collectionView.collectionViewLayout = customLayout
    }
    
    func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search greetings"
        navigationItem.searchController = searchController
        navigationController?.topViewController?.navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func filterContentForSearchText(_ searchText: String) {
        filteredGreetings = greetings.filter({ (greet: Greeting) -> Bool in
            return greet.additionalInfo.lowercased().contains(searchText.lowercased())
        })
        collectionView.reloadData()
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if isFiltering {
            return filteredGreetings.count
        }
        return greetings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let homeCell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.identifier, for: indexPath) as! HomeCell
        
        let greet: Greeting
        
        if isFiltering {
          greet = filteredGreetings[indexPath.row]
        } else {
          greet = greetings[indexPath.row]
        }
        
        homeCell.setupData(greeting: greet)
        return homeCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let individualGreetingHomeVC = IndividualGreetingHomeVC(nibName: "IndividualGreetingHomeVC", bundle: nil)
        let greet: Greeting
        if isFiltering {
          greet = filteredGreetings[indexPath.row]
        } else {
          greet = greetings[indexPath.row]
        }
        individualGreetingHomeVC.greetingFromHome = greet
        navigationController?.pushViewController(individualGreetingHomeVC, animated: true)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}

extension HomeViewController: CustomLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
        return UIImage(named: greetings[indexPath.item].greetingImage)!.size
    }
}

extension HomeViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
}
