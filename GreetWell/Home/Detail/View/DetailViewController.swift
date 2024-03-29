//
//  DetailViewController.swift
//  GreetWell
//
//  Created by Ani Adhikary on 11/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let layout = UICollectionViewFlowLayout()
    var greetings = [Greeting]()
    var greetingFromHome = Greeting()
    var selectedGreeting = Greeting()
    
    var isDisplaying = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupGreetings()
        setupNavBar()
        setupCollectionView()
        selectedGreeting = greetingFromHome
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideNavAndTabBarOnTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    override func viewDidLayoutSubviews() {
//        if let indexOfGreeting = greetings.firstIndex(where: {$0 === greetingFromHome}) {
//            print("indexOfGreeting--------- \(indexOfGreeting)")
//            collectionView.scrollToItem(at: IndexPath(item: indexOfGreeting, section: 0), at: .right, animated: false)
//        } else {
//            print("Not found-----------")
//        }
        
        if let indexOfGreeting = greetings.firstIndex(of: greetingFromHome) {
            print("indexOfGreeting--------- \(indexOfGreeting)")
            collectionView.scrollToItem(at: IndexPath(item: indexOfGreeting, section: 0), at: .right, animated: false)
        } else {
            print("Not found-----------")
        }
        
    }
    
    private func setupGreetings() {
        greetings = HomeGreetingResponse.getGreetings(greetType: greetingFromHome.greetingType, greetingPageCategory: GreetingPageCategory.greetingPage)
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.topViewController?.title = "Greeting"
        navigationItem.hidesBackButton = false
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        //right menu
        let rightMenuIcon = UIBarButtonItem(image: UIImage(named: "Share"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(showMenu))
        navigationController?.topViewController?.navigationItem.rightBarButtonItem = rightMenuIcon
    }
    
    func setupCollectionView() {
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        collectionView.collectionViewLayout = layout
        collectionView.backgroundColor = .none
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(GreetingCell.nib, forCellWithReuseIdentifier: GreetingCell.identifier)
    }
    
    @objc func hideNavAndTabBarOnTap() {
        if isDisplaying {
            self.tabBarController?.tabBar.isHidden = true
            self.navigationController?.navigationBar.isHidden = true
            isDisplaying = false
        } else {
            self.tabBarController?.tabBar.isHidden = false
            self.navigationController?.navigationBar.isHidden = false
            isDisplaying = true
        }
    }
    
    @objc func showMenu(_ sender: UIButton) {
        
        // create an actionSheet
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // create an action
        let firstAction: UIAlertAction = UIAlertAction(title: "Save", style: .default) { action -> Void in
            print("First Action pressed")
        }
        
        let secondAction: UIAlertAction = UIAlertAction(title: "Share", style: .default) { action -> Void in
            
            print("Share Action pressed")
            //            guard let image = UIImage(named: self.selectedGreeting.greetingImage ?? "Birthday1") else { return }
            
            guard let image = UIImage(named: self.selectedGreeting.greetingImage) else {
                return
            }
            let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            
            if DeviceEnv.isIpad {
                activityViewController.popoverPresentationController?.sourceView = self.view
                activityViewController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
            }
            self.present(activityViewController, animated: true, completion: nil)
        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
        
        // add actions
        actionSheetController.addAction(firstAction)
        actionSheetController.addAction(secondAction)
        actionSheetController.addAction(cancelAction)
        
        if DeviceEnv.isIpad {
            actionSheetController.popoverPresentationController?.sourceView = self.view
            actionSheetController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection()
            actionSheetController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
        self.present(actionSheetController, animated: true, completion: nil)
        
    }
}



extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return greetings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let greetCell = collectionView.dequeueReusableCell(withReuseIdentifier: GreetingCell.identifier, for: indexPath) as! GreetingCell
        let greeting = greetings[indexPath.row]
        greetCell.setupData(greeting: greeting)
        return greetCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        
        //print(indexPath)
        selectedGreeting = greetings[indexPath.row]
    }
    
}
