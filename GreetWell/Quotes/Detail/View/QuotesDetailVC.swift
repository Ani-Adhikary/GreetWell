//
//  QuotesDetailVC.swift
//  GreetWell
//
//  Created by Ani Adhikary on 17/07/20.
//  Copyright © 2023 Ani Adhikary. All rights reserved.
//

import UIKit

class QuotesDetailVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let layout = UICollectionViewFlowLayout()
    var quotes: [Quote]?
    var quotesToDisplay = [Quote]()
    var quoteTypeFromHome: QuoteType = .birthday
    var selectedQuoteToShare: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let quotes = quotes {
            quotesToDisplay = quotes
        } else {
            quotesToDisplay = QuotesResponse.getQuotes(quoteType: quoteTypeFromHome)
        }
        setupNavBar()
        setupCollectionView()
    }

    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.topViewController?.title = QuotesResponse.getIndividualQuotesPageTitle(quoteType: quoteTypeFromHome)
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.hidesBackButton = false
        navigationController?.isNavigationBarHidden = false
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
        collectionView.register(QuoteDetailCell.nib, forCellWithReuseIdentifier: QuoteDetailCell.identifier)
    }
}

extension QuotesDetailVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quotesToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let quoteCell = collectionView.dequeueReusableCell(withReuseIdentifier: QuoteDetailCell.identifier, for: indexPath) as! QuoteDetailCell
        quoteCell.delegate = self
        let quote = quotesToDisplay[indexPath.row]
        quoteCell.setupData(quote: quote)
        return quoteCell
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
        selectedQuoteToShare = quotesToDisplay[indexPath.row]
    }
    
}


extension QuotesDetailVC: QuoteDetailCellProtocol {
    
    func shareButtonClicked(quoteToShare: Quote) {
        var quoteString = ""
        
        if quoteToShare.author == "" {
            quoteString = quoteToShare.quoteText
        } else {
            quoteString = "\(quoteToShare.quoteText)\n\n- \(quoteToShare.author)"
        }
        
        //print("quoteString---------- \(quoteString)")
        
        let activityViewController = UIActivityViewController(activityItems: [quoteString], applicationActivities: nil)
        
        if DeviceEnv.isIpad {
            activityViewController.popoverPresentationController?.sourceView = self.view
            activityViewController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
        present(activityViewController, animated: true, completion: nil)
    }
    
}
