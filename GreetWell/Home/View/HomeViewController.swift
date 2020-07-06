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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetings = HomeGreetingResponse.getGreetings()
        setupCollectionView()
        setupCollectionViewItemSize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
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
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return greetings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let homeCell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.identifier, for: indexPath) as! HomeCell
        let greetVal = greetings[indexPath.row]
        homeCell.setupData(greeting: greetVal)
        return homeCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let catDetailVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
//        catDetailVC.selectedCatFirstTime = greetings[indexPath.row]
//        navigationController?.pushViewController(catDetailVC, animated: true)
        
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}

extension HomeViewController: CustomLayoutDelegate {
  func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
    return UIImage(named: greetings[indexPath.item].greetingImage)!.size
  }
}

