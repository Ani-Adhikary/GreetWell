//
//  HomeViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 02/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class IndividualGreetingHomeVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!    
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var shareBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var favBarButtonItem: UIBarButtonItem!
    
    var greetings = [Greeting]()
    var greetingFromHome = Greeting()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGreetings()
        setupCollectionView()
        setupBarButtonItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.topViewController?.title = HomeGreetingResponse.getIndividualGreetingsPageTitle(greetType: greetingFromHome.greetingType)
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.hidesBackButton = false
        navigationController?.isNavigationBarHidden = false
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(FavCell.nib, forCellWithReuseIdentifier: FavCell.identifier)
        let customLayout = CustomLayout()
        customLayout.delegate = self
        collectionView.collectionViewLayout = customLayout
    }
    
    private func setupGreetings() {
        greetings = HomeGreetingResponse.getGreetings(greetType: greetingFromHome.greetingType, greetingPageCategory: GreetingPageCategory.greetingPage)
    }
    
    private func setupBarButtonItems() {
        shareBarButtonItem.isEnabled = false
        favBarButtonItem.isEnabled = false
        shareBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .disabled)
        favBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .disabled)
    }
    
    @IBAction func shareBarButtonClicked(_ sender: UIBarButtonItem) {
        print("share button tapped--------------")
    }
    
    @IBAction func favBarButtonClicked(_ sender: UIBarButtonItem) {
        print("fav button tapped--------------")
    }
    
}

extension IndividualGreetingHomeVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return greetings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let homeCell = collectionView.dequeueReusableCell(withReuseIdentifier: FavCell.identifier, for: indexPath) as! FavCell
        let greetVal = greetings[indexPath.row]
        homeCell.setupData(greeting: greetVal)
        return homeCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.greetings = greetings
        detailVC.greetingFromHome = greetings[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}

extension IndividualGreetingHomeVC: CustomLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
        return UIImage(named: greetings[indexPath.item].greetingImage)!.size
    }
}


